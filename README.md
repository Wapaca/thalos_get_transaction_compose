# Thalos Server with Redis and thalos_get_transaction

## Overview

This repository provides a convenient setup for running Thalos Server along with Redis and thalos_get_transaction.

## How to Use

Follow these steps to get started:

1. Navigate to the `images/thalos` directory.
2. Modify the `config.yml` file to update the `nodeos` and WebSocket (`ws`) endpoints according to your blockchain configuration.
3. Optionally, you can change the open port for `get_transaction` inside the `docker-compose.yml` file.

After configuring the settings, run the following commands:

```bash
docker-compose build
docker-compose up -d
```

This will build the necessary Docker images and start the Thalos Server, Redis, and thalos_get_transaction services in detached mode (`-d`).