# phishingFakeSoftwareUpdate.ps1
# Fake phishing alert script for testing purposes

# Variables
$logName = 'Application'
$source = 'FakeSoftwareUpdate'
$eventID = 5001
$message = 'Suspicious software update detected: Potential phishing attempt targeting ExampleApp. Immediate verification recommended.'

# Create event source if it doesn't exist
if (-not [System.Diagnostics.EventLog]::SourceExists($source)) {
    New-EventLog -LogName $logName -Source $source
}

# Write phishing alert event to event log
Write-EventLog -LogName $logName -Source $source -EventID $eventID -EntryType Warning -Message $message

# Output confirmation
Write-Host "Fake phishing alert successfully created in Event Log."
