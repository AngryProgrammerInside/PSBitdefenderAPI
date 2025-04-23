function Get-BitdefenderLicenseInfo {
    [CmdletBinding()]
    Param(
        [Parameter(Mandatory=$True)]
        [string]$CompanyID
    )

    $Options = @{}

    $Options.companyId = $CompanyID

    $ret = Invoke-BitdefenderAPIRequest -APIUri $Global:BDLicensingAPIURI -Method "getLicenseInfo" -Options $Options

    return $ret
}