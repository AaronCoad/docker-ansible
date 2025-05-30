Run the docker container using `docker-compose up --build -d` \
Connect to the docker container using ` docker exec -it ansible ./bin/bash`

Once the container is running, cd into ./ansible-playbooks and run the following command: \
    `ansible-playbook -i inventory.ini hello-world.yaml`