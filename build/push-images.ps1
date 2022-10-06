$version='1.0.0'
$eshopondaprrepo='geffzhang'

docker push $eshopondaprrepo/blazor.client:$version
docker push $eshopondaprrepo/webstatus:$version
docker push $eshopondaprrepo/webshoppingagg:$version
docker push $eshopondaprrepo/webshoppingapigw:$version
docker push $eshopondaprrepo/basket.ap:$version
docker push $eshopondaprrepo/catalog.api:$version
docker push $eshopondaprrepo/identity.api:$version
docker push $eshopondaprrepo/ordering.api:$version
docker push $eshopondaprrepo/payment.api:$version
