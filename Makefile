.PHONY: create-volume
create-volume:
	sudo podman volume create chris-db

.PHONY: run-playbook
run-playbook:
    sudo podman play kube development-pod.yaml --configmap=secrets.yml

.PHONY: reset-podman
reset-podman:
    sudo podman system reset