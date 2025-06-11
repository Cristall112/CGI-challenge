# CGI Cloud Automation Challenge 🌐

This repository contains my submission for the **CGI Cloud Automation Challenge – DevOps Engineer (Junior 1)**.  
The challenge involved manually deploying a secure webserver, containerizing it, mapping a local domain, and automating the entire pipeline.

---

##  Project Breakdown

### Main Tasks:
1. **Deploy NGINX Webserver**
   - Created an Ubuntu VM on Google Cloud Platform (GCP)
   - Installed and configured NGINX
   - Created a custom HTML page: “Hello CGI!”

2. **Handle HTTPS & TLS**
   - Generated a self-signed TLS certificate
   - Configured NGINX to serve over HTTPS (port 443)

3. **Use Containerization**
   - Built a Docker image with NGINX and static HTML
   - Used volume mounts to allow dynamic updates without rebuilding the image

---

### Bonus I – Domain Mapping
- Locally mapped `http://automation-challenge.cgi.com` via `/etc/hosts`
- TLS certificate Common Name (CN) set to match domain
- Site accessible at `https://automation-challenge.cgi.com`

---

###  Bonus II – CI/CD Pipeline
- Configured **GitHub Actions** to automate Docker builds
- Triggered pipeline on push to `main` branch
- Pipeline builds the Docker image and verifies the setup

---

##  Tech Stack

- **GCP** – VM provisioning
- **NGINX** – Web server
- **Docker** – Containerization
- **OpenSSL** – TLS certificate generation
- **GitHub Actions** – CI/CD automation
- **Linux (Ubuntu)** – VM OS


---

##  What I Learned

- How to manually provision and configure secure web servers
- The importance of file structure and build context in Docker and CI/CD
- Hands on experience with TLS/HTTPS and domain mapping
- Creating and debugging GitHub Actions pipelines

---

## How to Run

```bash
# Build Docker image
docker build -t cgi-nginx .

# Run the container
docker run -d -p 8080:80 --name cgi-nginx cgi-nginx

http://localhost:8080
or
https://automation-challenge.cgi.com 
