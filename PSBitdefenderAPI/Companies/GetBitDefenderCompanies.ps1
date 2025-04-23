function Get-BitdefenderCompanies {
    $options = @{}
    $ret = Invoke-BitdefenderAPIRequest -APIUri $Global:BDNetworkAPIURI -Method "getCompaniesList" -Options $options

    return $ret
}