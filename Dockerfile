FROM nginx:latest
 
# Copy your web files
COPY . /usr/share/nginx/html/
 
# 1. Change the port to 8080 (Non-root users can't use port 80)
# 2. Grant permissions to the root group (GID 0) so OpenShift can write logs/cache
RUN sed -i 's/listen\(.*\)80;/listen 8080;/' /etc/nginx/conf.d/default.conf && \
    chgrp -R 0 /var/cache/nginx /var/run /var/log/nginx && \
    chmod -R g=u /var/cache/nginx /var/run /var/log/nginx
 
# OpenShift standard port
EXPOSE 8080
 
# Run as a non-root user (Standard for security)
USER 1001
 
CMD ["nginx", "-g", "daemon off;"]
