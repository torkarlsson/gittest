$resourceGroup = "testdevoppipe"

Describe "Resource Group tests" -tag "AzureInfrastructure" {
    
    Context "Resource Groups" {
        It "Check Main Resource Group $resourceGroup Exists" {
            Get-AzureRmResourceGroup -Name $resourceGroup -ErrorAction SilentlyContinue | Should Not be $null
        }
   
    }
}

Describe "Hub Tests" -tag "AzureInfrastructure" {
    Context "Notification" {
        $nHub=Get-AzureRmNotificationHub -Name "GEN-UNIQUE" -ResourceGroupName $resourceGroup -ErrorAction SilentlyContinue

        it "Check Hub $nHub Exists" {
            $nHub | Should Not be $null
        }
         
    }
}