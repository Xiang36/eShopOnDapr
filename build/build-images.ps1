$version='1.0.0'
$eshopondaprrepo='geffzhang'

$currentFolder = $PSScriptRoot
$slnFolder = Join-Path $currentFolder "../"
# Web
$blazorclientFolder = Join-Path $slnFolder "src/Web/BlazorClient.Host"
$webstatusFolder = Join-Path $slnFolder "src/Web/WebStatus"

# Gateways
$webshoppingaggFolder = Join-Path $slnFolder "src/ApiGateways/Aggregators/Web.Shopping.HttpAggregator"
$webshoppingapigwFolder = Join-Path $slnFolder "src/ApiGateways/Envoy"

# Microservices
$basketapiFolder = Join-Path $slnFolder "src/Services/Basket/Basket.API"
$catalogapiFolder = Join-Path $slnFolder "src/Services/Catalog/Catalog.API"
$identityapiFolder = Join-Path $slnFolder "src/Services/Identity/Identity.API"
$orderingapiFolder = Join-Path $slnFolder "src/Services/Ordering/Ordering.API"
$paymentapiFolder = Join-Path $slnFolder "src/Services/Payment/Payment.API"

$total = 9

### blazor WEB App(WWW)
Write-Host "*** BUILDING WEB (WWW) 1/$total ****************" -ForegroundColor Green
Set-Location $slnFolder

docker build -f $blazorclientFolder/Dockerfile -t $eshopondaprrepo/blazor.client:$version .

### webstatus
Write-Host "*** BUILDING web-status 2/$total ****************" -ForegroundColor Green
Set-Location $slnFolder
docker build -f $webstatusFolder/Dockerfile -t $eshopondaprrepo/webstatus:$version .

### Gateways
Write-Host "*** BUILDING WEBSHOPPING-agg 3/$total ****************" -ForegroundColor Green
Set-Location $slnFolder
docker build -f $webshoppingaggFolder/Dockerfile -t $eshopondaprrepo/webshoppingagg:$version .

### WEB-GATEWAY
Write-Host "*** BUILDING WEBSHOPPING-apigw 4/$total ****************" -ForegroundColor Green
Set-Location $slnFolder
docker build -f $webshoppingapigwFolder/Dockerfile -t $eshopondaprrepo/webshoppingapigw:$version .

### basketapi
Write-Host "*** BUILDING Basket-Api 5/$total ****************" -ForegroundColor Green
Set-Location $slnFolder
docker build -f $basketapiFolder/Dockerfile -t $eshopondaprrepo/basket.api:$version .

### Catalog api
Write-Host "*** BUILDING CATALOG-API 6/$total ****************" -ForegroundColor Green
Set-Location $slnFolder
docker build -f $catalogapiFolder/Dockerfile -t $eshopondaprrepo/catalog.api:$version .

### Identity api
Write-Host "**************** BUILDING Identity-API 7/$total ****************" -ForegroundColor Green
Set-Location $slnFolder
docker build -f $identityapiFolder/Dockerfile -t $eshopondaprrepo/identity.api:$version .

### Order-Api
Write-Host "**************** BUILDING Order-Api 8/$total ****************" -ForegroundColor Green
Set-Location $slnFolder
docker build -f $orderingapiFolder/Dockerfile -t $eshopondaprrepo/ordering.api:$version .

### PAYMENT-API
Write-Host "**************** BUILDING PAYMENT-API 9/$total ****************" -ForegroundColor Green
Set-Location $slnFolder
docker build -f $paymentapiFolder/Dockerfile -t $eshopondaprrepo/payment.api:$version .

### ALL COMPLETED
Write-Host "ALL COMPLETED" -ForegroundColor Green
Set-Location $currentFolder