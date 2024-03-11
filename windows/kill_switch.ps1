$mediaApps = @("msteams", "ms-teams", "slack", "outlook", "whatsapp", "telegram")

foreach ($app in $mediaApps) {
  $process = Get-Process -Name $app -ErrorAction SilentlyContinue
  if ($process) {
    Stop-Process -Name $app -Force
    Write-Output "Killed $app."
  }
}
