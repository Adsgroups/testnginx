# Use your specific image from Artifactory as the base
FROM ninetyone.jfrog.io/infra-openshift-images/nginx:latest
COPY index.html /usr/share/nginx/html/index.html
EXPOSE 8080
