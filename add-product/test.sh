az apim product list \
  --resource-group rg-tarathec-poc-az-asse-sbx-001 \
  --service-name apimpocazassesbx003 \
  | jq

az apim product show \
  --product-id "myais" \
  --resource-group rg-tarathec-poc-az-asse-sbx-001 \
  --service-name apimpocazassesbx003 \
  | jq
# {
#     "approvalRequired": false,
#     "description": "myais",
#     "displayName": "myais",
#     "id": "/subscriptions/24750e68-d6c2-40b7-90f9-f55b5009e909/resourceGroups/rg-tarathec-poc-az-asse-sbx-001/providers/Microsoft.ApiManagement/service/apimpocazassesbx003/products/myais",
#     "name": "myais",
#     "resourceGroup": "rg-tarathec-poc-az-asse-sbx-001",
#     "state": "notPublished",
#     "subscriptionRequired": true,
#     "subscriptionsLimit": null,
#     "terms": null,
#     "type": "Microsoft.ApiManagement/service/products"
#   }

az apim product api add --api-id admddev \
 --product-id myais \
 --resource-group rg-tarathec-poc-az-asse-sbx-001 \
 --service-name apimpocazassesbx003

 az apim product api list --product-id myais \
 --resource-group rg-tarathec-poc-az-asse-sbx-001 \
 --service-name apimpocazassesbx003 \
 | jq -r '.[].id' | rev | cut -d'/' -f1 | rev