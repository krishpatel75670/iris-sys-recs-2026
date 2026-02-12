# iris-sys-recs-2026

1. pack the Rails Apllication in a Docker containers.
2. launch seperate container for mysql and connect both 
3. launch Nginx container and configure it as a reverse proxy to the app
4. load balance across three container
5. Enable persistence for DB data and Nginx configuration files so they remain available even when container go down