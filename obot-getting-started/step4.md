# Configure GitHub Authentication

This step walks you through setting up GitHub as an authentication provider for Obot.

## Step 1: Get the Obot Callback URL

1. In the Obot admin UI, navigate to **User Management → Auth Providers**
2. Click **Configure** next to **GitHub**
3. Copy the **Callback URL** shown in the configuration dialog — you will need it in the next step

## Step 2: Create a GitHub OAuth App

1. Go to [GitHub Settings → Developer settings → OAuth Apps](https://github.com/settings/developers)
2. Click **New OAuth App**
3. Fill in the fields:
   - **Application name** — e.g. `Obot`
   - **Homepage URL** — the URL of your Obot instance (e.g. `{{TRAFFIC_HOST1_8080}}`)
   - **Authorization callback URL** — paste the Callback URL you copied from Obot
4. Click **Register application**
5. On the app page, click **Generate a new client secret**
6. Copy the **Client ID** and the newly generated **Client Secret**

## Step 3: Configure GitHub Auth in Obot

1. Return to the Obot **Auth Providers** page
2. Click **Configure** next to **GitHub**
3. Enter the **Client ID** and **Client Secret**
4. Optionally set **Email Domains** to restrict access (e.g. `example.com`), or use `*` to allow all
5. Click **Confirm**

## Step 4: Set Yourself as Owner

1. Log out of the bootstrap session
2. Click **Sign in with GitHub** and authenticate with your GitHub account
3. Log out again
4. Log back in using the bootstrap token
5. Navigate to **User Management → Users**
6. Find your GitHub account and click **Update Role**, setting it to **Owner**

You now have a fully authenticated Obot instance with GitHub login.
