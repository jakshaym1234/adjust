# adjust
**Containerizing the App:**

**Dockerfile and bootstrap.sh**

- Running application as non-root- Done
- Docker is the tool to support it- Done

**Deliverables** :

- Dockerfile

![image](https://user-images.githubusercontent.com/55613494/118780217-7103f280-b8a9-11eb-8535-74063b56cf6d.png)

- sh



- Local image:

![image](https://user-images.githubusercontent.com/55613494/118781970-3d29cc80-b8ab-11eb-9ce9-5e13d554a907.png)

- Testing locally. Container running.

![image](https://user-images.githubusercontent.com/55613494/118781983-42871700-b8ab-11eb-95a4-dbc5e6f221a7.png)


- App running

![image](https://user-images.githubusercontent.com/55613494/118781997-474bcb00-b8ab-11eb-8ca0-ccba8802d658.png)

- Healthcheck up!!!

![image](https://user-images.githubusercontent.com/55613494/118782012-4b77e880-b8ab-11eb-809c-e692c273a0ac.png)


- Running app as non-root user

![image](https://user-images.githubusercontent.com/55613494/118782029-50d53300-b8ab-11eb-853b-f41d5c841db0.png)

- Helm Charts for the Ruby App deploy:

![image](https://user-images.githubusercontent.com/55613494/118782065-56cb1400-b8ab-11eb-9a52-1561360cf06a.png)

- Deployed the Helm Chart to the minikube cluster:

![image](https://user-images.githubusercontent.com/55613494/118782079-5a5e9b00-b8ab-11eb-884e-577d346bb528.png)

- Pods:

![image](https://user-images.githubusercontent.com/55613494/118782103-60547c00-b8ab-11eb-9e9a-46afdc05a12a.png)

- Exposed the SVC as load balanced to maintain high availability. LB is still in pending state due to minikube installation:

![image](https://user-images.githubusercontent.com/55613494/118782123-64809980-b8ab-11eb-862e-fa4d0e9b5de6.png)

- Liveliness and Readiness probes are not working since the response coming from the application. Will try to use a diff ruby application

![image](https://user-images.githubusercontent.com/55613494/118784975-0c976200-b8ae-11eb-8b1e-13a6bad55f79.png)
  
