# IPv6Pulse Development Launcher
Write-Host "==========================================================" -ForegroundColor Cyan
Write-Host "   IPv6Pulse - Enterprise Infrastructure Auditor          " -ForegroundColor Green
Write-Host "==========================================================" -ForegroundColor Cyan

$root = $PSScriptRoot

# 1. Start Backend
Write-Host "[1/2] Starting FastAPI Backend on http://localhost:8000..." -ForegroundColor Yellow
$backendJob = Start-Process -FilePath "powershell.exe" -ArgumentList "-NoExit", "-Command", "cd `"$root\backend`"; .\venv\Scripts\python.exe -m uvicorn app.main:app --host 0.0.0.0 --port 8000 --reload" -PassThru

# 2. Start Frontend
Write-Host "[2/2] Starting React + Vite Frontend on http://localhost:5173..." -ForegroundColor Yellow
$frontendJob = Start-Process -FilePath "powershell.exe" -ArgumentList "-NoExit", "-Command", "cd `"$root\frontend`"; npm run dev -- --host --port 5173" -PassThru

Write-Host "==========================================================" -ForegroundColor Green
Write-Host "  IPv6Pulse is now RUNNING!" -ForegroundColor Green
Write-Host "  Frontend Dashboard : http://localhost:5173" -ForegroundColor White
Write-Host "  Backend Swagger API: http://localhost:8000/docs" -ForegroundColor White
Write-Host "==========================================================" -ForegroundColor Green
