$scriptDir = "$env:USERPROFILE\.local\usr\bin"
$userPath = [System.Environment]::GetEnvironmentVariable("PATH", "User")

if (-not (Test-Path -Path $scriptDir)) {
    New-Item -Path $scriptDir -ItemType Directory -Force
}
$pathArray = $userPath -split ";"

if (-not ($pathArray -contains $scriptDir)) {
    $userPath += ";$scriptDir"
    [System.Environment]::SetEnvironmentVariable("PATH", $userPath, "User")
}
