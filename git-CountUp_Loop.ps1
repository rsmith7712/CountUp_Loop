<#	
	.NOTES
	===========================================================================
	 Created with: 	SAPIEN Technologies, Inc., PowerShell Studio 2016 v5.2.127
	 Created on:   	11/02/2016 9:00 AM
	 Created by:   	Richard Smith
	 Organization: 	
	 Filename:     	CountUp_Loop.ps1
	===========================================================================
	.DESCRIPTION
		Loop a specific command multiple times (time kill)
#>

Function Count-Up
{
    if($i -lt 10)
    {
        Get-WmiObject -List | Where-Object {$_.name -Match 'Network'}
        $i++
        Count-Up
    }
    else
    {
        Write-Host “Count complete - We have counted up to $i”
    }
}

Count-Up