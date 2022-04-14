$uri = $run_script
Invoke-WebRequest -Uri $uri -Headers @{"Cache-Control"="no-cache"} -OutFile run.ps1
while(1)
{
	Invoke-WebRequest -Uri $uri -OutFile run-new.ps1
	echo "Getting run file"
	get-content run-new.ps1
	if(compare-object (get-content run.ps1) (get-content run-new.ps1))
	{	
		echo "Changes Detected"
		Remove-Item run.ps1
		Rename-Item run-new.ps1 run.ps1
		echo "Running new script"
		get-content run.ps1
		& '.\run.ps1'
	}
	else
	{
		Start-Sleep -s 5
	}
}