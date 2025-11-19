$source = "C:\Users\User\AppData\Roaming\Zoom\data\VirtualBkgnd_Default" //Ensure this path resolves for you!
$destination = "Path\To\Destination\"

if (!(Test-Path $destination)) {
    New-Item -ItemType Directory -Path $destination | Out-Null
}

Write-Host "Copying and converting files..." -ForegroundColor Cyan

try {
    Get-ChildItem -Path $source -File | ForEach-Object {
        $newName = "$($_.BaseName).png"
        $destFile = Join-Path $destination $newName
        Copy-Item -Path $_.FullName -Destination $destFile -ErrorAction Stop
        Write-Host "Converted: $newName"
    }

    Write-Host "`nDone!" -ForegroundColor Green

} catch {
    Write-Host "`nERROR:" -ForegroundColor Red
    Write-Host $_
}

Write-Host "`nPress Enter to exit..."
Read-Host
