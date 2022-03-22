# Getting Started with Flux and Flagger

Ok so I have a kind cluster but it is configured with Kourier ingress for doing
the Knative getting started. I need to get started with Flux and Flagger. This
repo has an easy getting started with Flux, but the flagger part is not there
yet. Flagger does not mention Kourier ingress as a supported tool. But it does
metion Istio, from which Kourier is derived. Anyway, I had to do a few helm
installs for the nginx-ingress and the Flagger resources but that's all lost
now because it is not code. Next time I'll put it all in code.

To Do
- Pull in the kind cluster definition into this repo
- Adjust the ingress port mappings to match nginx-ingress
- Get the nginx-ingress deployment into Flux
- Get the Flagger deployment into Flux
- Get the podinfo Ingress into Flux
