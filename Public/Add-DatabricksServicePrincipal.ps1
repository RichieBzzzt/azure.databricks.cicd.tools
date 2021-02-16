# #not ready!
# Function Add-DatabricksServicePrincipal
# { 
#     [cmdletbinding()]
#     param (
#         [parameter(Mandatory = $true, ParameterSetName='Bearer')]
#         [string]$BearerToken, 

#         [parameter(Mandatory = $false, ParameterSetName='Bearer')]
#         [parameter(Mandatory = $false, ParameterSetName='AAD')]
#         [string]$Region,
        
#         [parameter(Mandatory = $false)]
#         [string]$DatabricksId,
#         [parameter(Mandatory = $true)]
#         [string]$ServicePrincipalId,
#         [parameter(Mandatory = $true)]
#         [string]$ServicePrincipalDisplayName,
#         [parameter(Mandatory = $true)]
#         [string]$GroupName
#     ) 

#     #first get groupid by name
#     $WorkspaceGroups = Get-DatabricksGroups | Select-Object
#     $WrorkspaceGroupValue = $profit
#     #then post to scim
#     [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
#     $Headers = GetHeaders $PSBoundParameters
#     $URIExtras = ""

#     if ($PSBoundParameters.ContainsKey('DatabricksId')){
#         $URIExtras = "/$DatabricksId"
#     }

#     $URI = "$global:DatabricksURI/api/2.0/preview/scim/v2/ServicePrincipals$URIExtras"
#     $body = '{
#         "schemas":[
#           "urn:ietf:params:scim:schemas:core:2.0:ServicePrincipal"
#         ],
#         "applicationId":"'+$ServicePrincipalId+'",
#         "displayName":"'+$ServicePrincipalDisplayName+'",
#         "groups":[
#           {
#              "value":"'+$WrorkspaceGroupValue+'"
#           }
#         ]
#       }'

#     Invoke-RestMethod -Method Post -Body $body -Uri $URI -Headers $Headers
# }