# Use your specific image from Artifactory as the base
FROM ninetyone.jfrog.io/infra-openshift-images/nginx:latest
COPY . /usr/share/nginx/html/
EXPOSE 8080
