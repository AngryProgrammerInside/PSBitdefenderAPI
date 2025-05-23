function Set-BitdefenderLicenseKey {
    [CmdletBinding()]
    Param(
        [Parameter(Mandatory=$True)]
        [string]$LicenseKey,

        [Parameter(Mandatory=$False)]
        [string]$CompanyID = $null
    )

    $Options = @{}

    $Options.licenseKey = $LicenseKey

    if ($CompanyID) { $Options.companyId = $CompanyID }

    $ret = Invoke-BitdefenderAPIRequest -APIUri $Global:BDLicensingAPIURI -Method "setLicenseKey" -Options $Options

    return $ret   
}