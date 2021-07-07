#! /bin/bash -e

root="$(dirname "$0")"
localhost=${DOCKER_HOST_IP:localhost}

"$root"/wait-for-services.sh ${localhost} actuator/health 8081 8082 8083

echo The microservices are running
echo You can visit these URLS
echo http://${localhost}:8081/swagger-ui/ - Customer service
echo http://${localhost}:8083/swagger-ui/ - Order Service
echo http://${localhost}:8082/swagger-ui/ - Order History Service
