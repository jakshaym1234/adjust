- Now on to automating the flow using GitHub Action CI(How to replicate this at your end):
- Step1: Setup the following secrets for secret injection into pipeline in a secure way.
-   1. DOCKER HUB USERNAME - to push image to docker hub
-   2. DOCKER HUB PASSWORD- to push image to docker hub
-   3. AWS_ACCESS_KEY_ID- for terraform to provision EKS CLUSTER
-   4. AWS_SECRET_ACCESS_KEY- for terraform to provision EKS CLUSTER
-   5. STATE_BUCKET_NAME - where TF will store its state file(S3 bucket was setup from portal)
-   6. STATE_PATH - where TF will store its state file(S3 bucket was setup from portal)
  
  ![image](https://user-images.githubusercontent.com/55613494/118939250-18962900-b96d-11eb-9185-07587506fcb4.png)
 
- Step2: Setup bucket with proper permission to store state file
 ![image](https://user-images.githubusercontent.com/55613494/118939951-dae5d000-b96d-11eb-8af5-865f6ea35a7b.png)

- Step3: All Github action pipeline YML are in 
![image](https://user-images.githubusercontent.com/55613494/118940095-0072d980-b96e-11eb-858c-e69e9de13f4f.png)

- Step4: Docker Image build pipeline
- Trigger whenever Dockerfile in the repo is update.Comment explain what each step does.
![image](https://user-images.githubusercontent.com/55613494/118940334-3b750d00-b96e-11eb-978b-551fa5584afe.png)

- Step5: Terraform INIT PLAN APPLY:
- Run the TF Workfflow. Runs whenever the folder hosting the tf code i.e. "terraform" folder in the repo is updated.

![image](https://user-images.githubusercontent.com/55613494/118940704-99a1f000-b96e-11eb-92ba-9c1e4a220c57.png)

- Step6: If you want to destroy the complete infra run the TF Destroy(if needed). Run on manual trigger.
![image](https://user-images.githubusercontent.com/55613494/118941034-f1405b80-b96e-11eb-9478-ded7e221ce8b.png)

- Capture of Pipeline runs:

![image](https://user-images.githubusercontent.com/55613494/118941185-1765fb80-b96f-11eb-83b3-6d2a9494016b.png)
![image](https://user-images.githubusercontent.com/55613494/118941242-25b41780-b96f-11eb-8944-b3ba65811ce6.png)
![image](https://user-images.githubusercontent.com/55613494/118941286-306eac80-b96f-11eb-93fd-b7674c87c94e.png)

- Deployed with TF:

![image](https://user-images.githubusercontent.com/55613494/118941853-ca365980-b96f-11eb-81e4-23824bd98d24.png)
![image](https://user-images.githubusercontent.com/55613494/118941903-d91d0c00-b96f-11eb-9051-4aa3a227ba70.png)
![image](https://user-images.githubusercontent.com/55613494/118942032-f9e56180-b96f-11eb-8df7-68bb0b2cefa7.png)

- Unable to start the webserver to the the server bind. Will use better sample code to fix this.
- FIX: Used code from this repo:
- https://github.com/jakshaym1234/rubysampleadjust
- Binded the application to port 8000 as the non root user cant bind to port 80
- Added liveliness and readness port also to watch for /index
