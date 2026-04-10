# Use your specific image from Artifactory as the base
FROM trial1p5ix4.jfrog.io/arundev/nginxonp:latest
COPY index.html /usr/share/nginx/html/index.html
EXPOSE 8080
