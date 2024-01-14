# Hidden Service with Tor and Nginx

This project demonstrates setting up a hidden service using Tor and Nginx inside a Docker container. The hidden service provides anonymous and secure access to a web application.

## Prerequisites

- Docker
- Docker Compose

## Getting Started

1. **Clone this repository:**

    ```bash
    git clone https://github.com/lsneal/HiddenService.git
    cd HiddenService
    ```

2. **Build and run the Docker containers:**

    ```bash
    make build or sudo make build
    ```

3. **Access the hidden service:**

    - To find the onion address, open your docker and the path is '/var/lib/tor/hidden_service/hostname'.
    - Open your Tor Browser and enter the provided onion domain.

## Configuration

- **Nginx configuration:** `nginx/nginx.conf`
- **Tor configuration:** `tor/torrc`

## Future updates

I plan to make the following updates in future versions:

- Display the onion address once the service is launched.
- Add an ssh connection on the server.
- Separate the docker into 2 dockers, one for nginx and the other for tor.
