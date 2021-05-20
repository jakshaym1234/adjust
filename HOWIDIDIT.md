# adjust
**Containerizing the App:**

**Dockerfile and bootstrap.sh**

- Running application as non-root- Done
- Docker is the tool to support it- Done

**How i went about doing this task** :

- Step1: Write Dockerfile

![image](https://user-images.githubusercontent.com/55613494/118780217-7103f280-b8a9-11eb-8535-74063b56cf6d.png)


- Step2 : Build and test Local image:

![image](https://user-images.githubusercontent.com/55613494/118781970-3d29cc80-b8ab-11eb-9ce9-5e13d554a907.png)

- Step3: Testing locally. Container running.

![image](https://user-images.githubusercontent.com/55613494/118781983-42871700-b8ab-11eb-95a4-dbc5e6f221a7.png)


- Step4: Test if App running in container locally

![image](https://user-images.githubusercontent.com/55613494/118781997-474bcb00-b8ab-11eb-8ca0-ccba8802d658.png)

- Step5: Test Healthcheck Probe
![image](https://user-images.githubusercontent.com/55613494/118782012-4b77e880-b8ab-11eb-809c-e692c273a0ac.png)


- Step7: Check Requiermtn that Running app as non-root user

![image](https://user-images.githubusercontent.com/55613494/118782029-50d53300-b8ab-11eb-853b-f41d5c841db0.png)

- Step8: Init Helm Charts for the Ruby App deploy:

![image](https://user-images.githubusercontent.com/55613494/118782065-56cb1400-b8ab-11eb-9a52-1561360cf06a.png)

- Step9: Deployed the Helm Chart to the minikube cluster:

![image](https://user-images.githubusercontent.com/55613494/118782079-5a5e9b00-b8ab-11eb-884e-577d346bb528.png)

- Step10: Pods are provisioned on minikube:

![image](https://user-images.githubusercontent.com/55613494/118782103-60547c00-b8ab-11eb-9e9a-46afdc05a12a.png)

- Step11: Check if App is Exposed the SVC as load balanced to maintain high availability. LB is still in pending state due to minikube installation:

![image](https://user-images.githubusercontent.com/55613494/118782123-64809980-b8ab-11eb-862e-fa4d0e9b5de6.png)

- Step12: Liveliness and Readiness probes are not working since the response coming from the application is not well formed. Will try to use a diff ruby application giving proper https reponse. Commented the liveliness and readiness probe for now.

![image](https://user-images.githubusercontent.com/55613494/118789175-233fb800-b8b2-11eb-828f-ef6f0115b8c2.png)


![image](https://user-images.githubusercontent.com/55613494/118784975-0c976200-b8ae-11eb-8b1e-13a6bad55f79.png)

- Step13: Write TF CODE to start EKS cluster(Used avialabel module directly. didnt go to write the module as wasnt part of original assignment). Added Code to deploy the HELM chart to EKS cluster. EKS provisioned using TF. Helm Install also included as part of TF flow.

![image](https://user-images.githubusercontent.com/55613494/118803027-7ae52000-b8c0-11eb-9b7a-e77add2d9395.png)
![image](https://user-images.githubusercontent.com/55613494/118803115-94866780-b8c0-11eb-9593-b39051ed97d8.png)

- Step14: Pods deployed to the EKS cluster(they are in failed state due to the ruby http server code . Will try to fix them with better code to be deployed)

![image](https://user-images.githubusercontent.com/55613494/118803363-e3340180-b8c0-11eb-98cb-60c8b54fc78e.png)

- Step15: Check load balancer works when using EKS cluster since it deploys a ELB(was not working in minikube setup)

![image](https://user-images.githubusercontent.com/55613494/118803484-06f74780-b8c1-11eb-9885-958b88ebb96d.png)

- Step16: validate EKS Cluster built with terraform:

![image](https://user-images.githubusercontent.com/55613494/118816740-1c27a280-b8d0-11eb-9d53-122225d125ad.png)







  
