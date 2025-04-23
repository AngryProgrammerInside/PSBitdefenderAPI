function Get-BitdefenderCompaniesByName {
    [CmdletBinding()]
    Param(
        [Parameter(Mandatory=$True)]
        [string]$NameFilter
    )

    $Options = @{}

    $Options.nameFilter = $NameFilter

    $ret = Invoke-BitdefenderAPIRequest -APIUri $Global:BDCompaniesAPIURI -Method "findCompaniesByName" -Options $Options

    return $ret
}