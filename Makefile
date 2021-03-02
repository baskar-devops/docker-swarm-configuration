STACK_NAME=pocdevops

.PHONY: deploy

deploy:
	docker stack deploy --compose-file deployment.yml $(STACK_NAME)

cntlm:
	docker stack deploy --compose-file cntlm.yml cntlm

es:
	docker stack deploy --compose-file es-stack.yml es
	
remove:
	docker stack remove $(STACK_NAME)
