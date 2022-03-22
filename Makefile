# Get the GH PAT first, it will prompt.
bootstrap:
	flux bootstrap github \
	  --owner=mehemken \
	  --repository=flux-getting-started \
	  --branch=main \
	  --path=./clusters/my-cluster \
	  --personal

nginx:
	helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx
	kubectl create ns ingress-nginx
	helm upgrade -i ingress-nginx ingress-nginx/ingress-nginx \
	--namespace ingress-nginx \
	--set controller.metrics.enabled=true \
	--set controller.podAnnotations."prometheus\.io/scrape"=true \
	--set controller.podAnnotations."prometheus\.io/port"=10254

flagger:
	helm repo add flagger https://flagger.app
	helm upgrade -i flagger flagger/flagger \
	--namespace ingress-nginx \
	--set prometheus.install=true \
	--set meshProvider=nginx
