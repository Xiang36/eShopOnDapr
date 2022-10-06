#!/bin/bash

export IMAGE_TAG="1.0.0"
export eshopondaprrepo ="geffzhang"
export total=9
cd ../
export currentFolder=`pwd`

echo "*** BUILDING blazor WEB App 1/${total} ****************"
cd ${currentFolder}
docker build -f ${currentFolder}/src/Web/BlazorClient.Host/Dockerfile --force-rm -t "${eshopondaprrepo}/blazor.client:${IMAGE_TAG}" .


echo "*** BUILDING web-status 2/$total ****************"
cd ${currentFolder}
docker build -f ${currentFolder}/src/Web/WebStatus/Dockerfile --force-rm -t "${eshopondaprrepo}/webstatus:${IMAGE_TAG}" .


echo "*** BUILDING WEBSHOPPING-agg 3/$total ****************"
cd ${currentFolder}
docker build -f ${currentFolder}/src/ApiGateways/Aggregators/Web.Shopping.HttpAggregator/Dockerfile --force-rm -t "${eshopondaprrepo}/webshoppingagg:${IMAGE_TAG}" .


echo "*** BUILDING WEBSHOPPING-apigw 4/$total ****************"
cd ${currentFolder}
docker build -f ${currentFolder}/src/ApiGateways/Envoy/Dockerfile --force-rm -t "${eshopondaprrepo}/webshoppingapigw:${IMAGE_TAG}" .


echo "*** BUILDING Basket-Api 5/$total ****************"
cd ${currentFolder}
docker build -f ${currentFolder}/src/Services/Basket/Basket.API/Dockerfile --force-rm -t "${eshopondaprrepo}/basket.api:${IMAGE_TAG}" .


echo "*** BUILDING  CATALOG-API 6/$total ****************"
cd ${currentFolder}
docker build -f ${currentFolder}/src/Services/Catalog/Catalog.API/Dockerfile --force-rm -t "${eshopondaprrepo}/catalog.api:${IMAGE_TAG}" .


echo "*** BUILDING Identity-API 7/$total ****************"
cd ${currentFolder}
docker build -f ${currentFolder}/src/Services/Identity/Identity.API/Dockerfile --force-rm -t "${eshopondaprrepo}/identity.api:${IMAGE_TAG}" .


echo "**************** BUILDING Order-Api 8/$total ****************"
cd ${currentFolder}
docker build -f ${currentFolder}/src/Services/Ordering/Ordering.API/Dockerfile --force-rm -t "${eshopondaprrepo}/ordering.api:${IMAGE_TAG}" .


echo "**************** BUILDING PAYMENT-API 9/$total ****************"
cd ${currentFolder}
docker build -f ${currentFolder}/src/Services/Payment/Payment.API/Dockerfile --force-rm -t "${eshopondaprrepo}/payment.api:${IMAGE_TAG}" .

echo "ALL COMPLETED"