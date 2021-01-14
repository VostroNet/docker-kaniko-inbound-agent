FROM gcr.io/kaniko-project/executor:v1.3.0 as kaniko
FROM jenkins/inbound-agent:4.3-4
USER root
COPY --from=kaniko /kaniko /kaniko
WORKDIR /kaniko
ENTRYPOINT ["jenkins-agent"]