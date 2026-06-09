# Configure Google Authentication

This step walks you through setting up Google as an authentication provider for Obot.

> If you'd prefer to use GitHub instead, click **Next** to skip to the GitHub setup.

## Step 1: Get the Obot Callback URL

1. In the Obot admin UI, navigate to **User Management → Auth Providers**
2. Click **Configure** next to **Google**
3. Copy the **Callback URL** shown in the configuration dialog — you will need it in the next step

## Step 2: Create a Google OAuth App

1. Go to the [Google Cloud Console](https://console.cloud.google.com/)
2. Create a new project or select an existing one
3. In the left menu, go to **APIs & Services → OAuth consent screen**
4. Select **External** as the user type and click **Create**
5. Fill in the required fields (app name, support email, developer contact) and click **Save and Continue** through the remaining screens
6. Go to **APIs & Services → Credentials**
7. Click **Create Credentials → OAuth client ID**
8. Set the application type to **Web application**
9. Under **Authorised redirect URIs**, paste the Callback URL you copied from Obot
10. Click **Create**
11. Copy the **Client ID** and **Client Secret** from the confirmation dialog

## Step 3: Configure Google Auth in Obot

1. Return to the Obot **Auth Providers** page
2. Click **Configure** next to **Google**
3. Enter the **Client ID** and **Client Secret**
4. Optionally set **Email Domains** to restrict access (e.g. `example.com`), or use `*` to allow all
5. Click **Confirm**

## Step 4: Set Yourself as Owner

1. Log out of the bootstrap session
2. Click **Sign in with Google** and authenticate with your Google account
3. Log out again
4. Log back in using the bootstrap token
5. Navigate to **User Management → Users**
6. Find your Google account and click **Update Role**, setting it to **Owner**

You now have a fully authenticated Obot instance with Google login.
