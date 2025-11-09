# Deploy to Vercel - Quick Guide

## ✅ Step 1: Code is already on GitHub!
Repository: https://github.com/vaibhav-srivastava-1/VisionPro

## 🚀 Step 2: Deploy to Vercel

### Option A: Via Vercel Dashboard (Recommended - Easiest)

1. **Go to Vercel**: https://vercel.com
2. **Sign up/Login**: Use your GitHub account to sign in (one-click login)
3. **Import Project**:
   - Click "Add New Project" button
   - You'll see a list of your GitHub repositories
   - Find and select **"VisionPro"** repository
4. **Configure Project**:
   - Project Name: `vision-pro` (or leave default)
   - Framework Preset: **Other** (or leave as auto-detected)
   - Root Directory: `./` (default)
   - Build Command: Leave empty (static site)
   - Output Directory: Leave empty
5. **Deploy**:
   - Click "Deploy" button
   - Wait 1-2 minutes for deployment
   - Your site will be live! 🎉

### Option B: Via Vercel CLI (If you prefer command line)

```powershell
# Install Vercel CLI
npm install -g vercel

# Navigate to project
cd "D:\Projects\Apple Vision Pro\Apple Vision Pro"

# Deploy
vercel

# Follow the prompts:
# - Login to Vercel
# - Link to existing project or create new
# - Deploy!
```

## 📝 Notes

- Vercel will automatically detect it's a static HTML site
- The `vercel.json` file is already configured
- Your site will get a URL like: `https://vision-pro.vercel.app`
- Future pushes to GitHub will auto-deploy (if you enable it)

## 🔗 After Deployment

Once deployed, you'll get:
- **Production URL**: `https://your-project.vercel.app`
- **Preview URLs**: For each commit/PR

Your Apple Vision Pro website will be live and accessible worldwide! 🌍

