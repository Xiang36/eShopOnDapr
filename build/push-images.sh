#!/bin/bash

export IMAGE_TAG="1.0.0"
export eshopondaprrepo ="geffzhang"

docker push ${eshopondaprrepo}/blazor.client:${IMAGE_TAG}
docker push ${eshopondaprrepo}/webstatus:${IMAGE_TAG}
docker push ${eshopondaprrepo}/webshoppingagg:${IMAGE_TAG}
docker push ${eshopondaprrepo}/webshoppingapigw:${IMAGE_TAG}
docker push ${eshopondaprrepo}/basket.api:${IMAGE_TAG}
docker push ${eshopondaprrepo}/catalog.api:${IMAGE_TAG}
docker push ${eshopondaprrepo}/identity.api:${IMAGE_TAG}
docker push ${eshopondaprrepo}/ordering.api:${IMAGE_TAG}
docker push ${eshopondaprrepo}/payment.api:${IMAGE_TAG}