service-in: ## Service in app
	kubectl apply -f deploy/postgres-pv.yaml
	kubectl apply -f deploy/video-assets-pv.yaml
	kubectl apply -f deploy/logs-pv.yaml
	kubectl apply -f deploy/deployment.yaml
	kubectl apply -f deploy/service.yaml

service-out: ## Service out app
	kubectl delete -f deploy/deployment.yaml
	kubectl delete -f deploy/service.yaml
	kubectl delete -f deploy/postgres-pv.yaml
	kubectl delete -f deploy/video-assets-pv.yaml
	kubectl delete -f deploy/logs-pv.yaml

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
