function EnableBitdefenderCompany {
    [CmdletBinding()]
    Param(
        [Parameter(Mandatory=$True)]
        [string]$CompanyID,

        [Parameter(Mandatory=$True)]
        [bool]$Recurse
    )

    $Options = @{}

    $Options.companyId = $CompanyID   
    $Options.recursive = $Recurse

    $ret = Invoke-BitdefenderAPIRequest -APIUri $Global:BDCompaniesAPIURI -Method "activateCompany" -Options $Options

    return $ret
}