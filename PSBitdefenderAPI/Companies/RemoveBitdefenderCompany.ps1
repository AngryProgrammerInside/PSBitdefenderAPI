function RemoveBitdefenderCompany {
    [CmdletBinding()]
    Param(
        [Parameter(Mandatory=$True)]
        [string]$CompanyID
    )

    $Options = @{}

    $Options.companyId = $CompanyID   

    $ret = Invoke-BitdefenderAPIRequest -APIUri $Global:BDCompaniesAPIURI -Method "removeCompany" -Options $Options

    return $ret
}