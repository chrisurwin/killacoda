# Log In to Obot

## Retrieve Your Bootstrap Token

Obot generated a bootstrap token at startup. Run the command below to retrieve it from the container logs:

```bash
docker logs obot 2>&1 | grep -i "bootstrap"
```{{execute}}

Copy the token value — you will need it to log in.

## Open the Obot Admin UI

Click the link below to open Obot in your browser:

**[Open Obot]({{TRAFFIC_HOST1_8080}}/admin)**

On the login page, click **Sign in with Bootstrap Token**, paste the token, and click **Login**.

You will be taken to the Auth Providers page where you can configure an authentication provider in the next steps.
