# Define variables for fake software phishing update alert
$logName = "Application"
$source = "FakeSoftwareUpdate"
$eventID = 5001
$message = "Alert: Suspicious software update detected. Potential phishing attempt identified during software update for 'ExampleApp'. Verify source before proceeding."

# Check if source exists; if not, create it
if (-not [System.Diagnostics.EventLog]::SourceExists($source)) {
    New-EventLog -LogName $logName -Source $source
}

# Write the event to the Event Log
Write-EventLog -LogName $logName -Source $source -EventID $eventID -EntryType Warning -Message $message

Write-Output "Fake phishing software update alert created in the Application event log."


#Run script in Powershell as -
# powershell -ExecutionPolicy Bypass -File .\\FakePhishingAlert.ps1
