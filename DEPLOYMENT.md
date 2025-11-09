# Deployment Instructions

## Step 1: Create GitHub Repository

1. Go to https://github.com/new
2. Repository name: `apple-vision-pro-website` (or any name you prefer)
3. Choose Public or Private
4. **DO NOT** initialize with README, .gitignore, or license (we already have these)
5. Click "Create repository"

## Step 2: Push to GitHub

After creating the repository, GitHub will show you commands. Use these instead:

```bash
cd "D:\Projects\Apple Vision Pro\Apple Vision Pro"
git remote add origin https://github.com/YOUR_USERNAME/YOUR_REPO_NAME.git
git branch -M main
git push -u origin main
```

Replace `YOUR_USERNAME` and `YOUR_REPO_NAME` with your actual GitHub username and repository name.

## Step 3: Deploy to Vercel

### Option A: Via Vercel Dashboard
1. Go to https://vercel.com
2. Sign up/Login with your GitHub account
3. Click "Add New Project"
4. Import your GitHub repository
5. Vercel will auto-detect it's a static site
6. Click "Deploy"
7. Your site will be live in minutes!

### Option B: Via Vercel CLI
```bash
npm i -g vercel
cd "D:\Projects\Apple Vision Pro\Apple Vision Pro"
vercel
```

Follow the prompts to deploy.

