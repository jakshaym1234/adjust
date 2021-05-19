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

![](RackMultipart20210519-4-17l5222_html_5113372dc6287a39.png)

- Testing locally. Container running.

![](RackMultipart20210519-4-17l5222_html_ec71039cdb0e2f58.png)

- App running

![](RackMultipart20210519-4-17l5222_html_92cf2c54e19b8b58.png)

- Healthcheck up!!!

![](RackMultipart20210519-4-17l5222_html_e05f4831836053e3.png)

- Running app as non-root user
- ![](RackMultipart20210519-4-17l5222_html_c83c7595c0d8edf8.png)

Helm Charts for the Ruby App deploy:

![](RackMultipart20210519-4-17l5222_html_1d130078bc343e51.png)

Deployed the Helm Chart to the minikube cluster:

![](RackMultipart20210519-4-17l5222_html_5a682469dbd51f1b.png)

Pods:

![](RackMultipart20210519-4-17l5222_html_f50e1c0ce45f2230.png)

Exposed the SVC as load balanced to maintain high availability. LB is still in pending state due to minikube installation:

![](RackMultipart20210519-4-17l5222_html_761a7670dba1b8af.png)
