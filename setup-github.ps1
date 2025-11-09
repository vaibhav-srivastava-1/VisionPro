# GitHub Repository Setup Script
# This script helps you create a GitHub repository and push your code

param(
    [string]$RepoName = "apple-vision-pro-website",
    [string]$GitHubToken = "",
    [string]$GitHubUsername = ""
)

Write-Host "=== GitHub Repository Setup ===" -ForegroundColor Cyan

# If no token provided, prompt for manual setup
if ([string]::IsNullOrEmpty($GitHubToken)) {
    Write-Host "`nGitHub Personal Access Token not provided." -ForegroundColor Yellow
    Write-Host "Please follow these steps:" -ForegroundColor Yellow
    Write-Host "1. Go to https://github.com/new" -ForegroundColor White
    Write-Host "2. Create a repository named: $RepoName" -ForegroundColor White
    Write-Host "3. DO NOT initialize with README, .gitignore, or license" -ForegroundColor White
    Write-Host "4. After creating, run the commands shown on GitHub" -ForegroundColor White
    Write-Host "`nOr provide a GitHub token to automate:" -ForegroundColor Yellow
    Write-Host "  .\setup-github.ps1 -GitHubToken YOUR_TOKEN -GitHubUsername YOUR_USERNAME" -ForegroundColor Gray
    exit
}

# Get username if not provided
if ([string]::IsNullOrEmpty($GitHubUsername)) {
    $response = Invoke-RestMethod -Uri "https://api.github.com/user" -Headers @{Authorization = "token $GitHubToken"}
    $GitHubUsername = $response.login
    Write-Host "Detected GitHub username: $GitHubUsername" -ForegroundColor Green
}

# Create repository via GitHub API
Write-Host "`nCreating repository '$RepoName' on GitHub..." -ForegroundColor Cyan

$body = @{
    name = $RepoName
    description = "Apple Vision Pro website with smooth scrolling animations"
    private = $false
} | ConvertTo-Json

try {
    $response = Invoke-RestMethod -Uri "https://api.github.com/user/repos" `
        -Method Post `
        -Headers @{Authorization = "token $GitHubToken"; "Content-Type" = "application/json"} `
        -Body $body
    
    Write-Host "Repository created successfully!" -ForegroundColor Green
    Write-Host "Repository URL: $($response.html_url)" -ForegroundColor Green
    
    # Add remote and push
    Write-Host "`nSetting up remote and pushing code..." -ForegroundColor Cyan
    
    git remote remove origin 2>$null
    git remote add origin "https://github.com/$GitHubUsername/$RepoName.git"
    git branch -M main
    git push -u origin main
    
    Write-Host "`n✓ Code pushed to GitHub successfully!" -ForegroundColor Green
    Write-Host "Repository: $($response.html_url)" -ForegroundColor Cyan
    
} catch {
    Write-Host "Error: $_" -ForegroundColor Red
    exit 1
}

