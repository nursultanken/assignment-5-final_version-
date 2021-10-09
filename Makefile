run:
	kubectl apply -f data-storage-class.yaml
	kubectl apply -f data-pvc.yaml
	kubectl apply -f data-secret.yaml
	kubectl apply -f back-secret.yaml
	kubectl apply -f myapp-networkpolicy.yaml
	kubectl apply -f back-deployment.yaml
	kubectl apply -f front-deployment.yaml
	kubectl apply -f data-deployment.yaml


fill-db:
	kubectl apply -f data-script-secret.yaml
	
	kubectl apply -f data-script-deployment.yaml


stop:
	kubectl delete -f data-secret.yaml
	kubectl delete -f back-secret.yaml
	kubectl delete -f data-script-secret.yaml
	kubectl delete -f back-deployment.yaml
	kubectl delete -f data-deployment.yaml
	kubectl delete -f data-script-deployment.yaml
	kubectl delete -f front-deployment.yaml


clean: stop
	kubectl delete -f data-pvc.yaml