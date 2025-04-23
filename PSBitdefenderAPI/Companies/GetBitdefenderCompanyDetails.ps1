function Get-BitdefenderCompanyDetails {
    [CmdletBinding()]
    Param(
        [Parameter(Mandatory=$True)]
        [string]$CompanyID
    )

    $Options = @{}

    $Options.companyId = $CompanyID

    $ret = Invoke-BitdefenderAPIRequest -APIUri $Global:BDCompaniesAPIURI -Method "getCompanyDetails" -Options $Options

    return $ret
}