# APPLICATION GATEWAY USING CLI
    # This script recomments using current Azure CLI version

# PREREQUISITES
    # Use Azure Bash or PowerShell evironment.
    # If you're using a local installation, sign in to the Azure CLI by using the az login command.

# VARIABLES
    # SubcriptionID = "yourScriptionID"
    # TenantID = "yourTenantID"
    # resourceGroupName="yourResourceGroup"
    # appName="ApplicationGatewayName"
    # location="USWest2" 

# AUTHOR
    # Loan Pham
    
param(

    [Parameter(Mandatory=$true)]
    [string]
    $SubscriptionID,

    [Parameter(Mandatory=$true)]
    [string]
    $TenantID,

    [Parameter(Mandatory=$true)]
    [string]
    $ResourceGroupName,

    [Parameter(Mandatory=$true)]
    [string]
    $Location,

    [Parameter(Mandatory=$true)]
    [string]
    $AppGatewayName

)

# Sign in azure from powershell
Connect-AzAccount 

# Create Application Gateway
New-AzApplicationGateway -ResourceGroupName $ResourceGroupName  -Location  $Location -NameAppGatewayName $AppGatewayName
