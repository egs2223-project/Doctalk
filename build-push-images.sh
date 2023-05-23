echo "Building images..."

docker buildx build --platform linux/amd64 --network=host -t vdfijhnf8yerf87hgti/egs-doctalk-auth:latest -f authentication-service/Dockerfile.auth .

docker buildx build --platform linux/amd64 --network=host -t vdfijhnf8yerf87hgti/egs-doctalk-notif:latest -f notification-service/Dockerfile.notify .

docker buildx build --platform linux/amd64 --network=host -t vdfijhnf8yerf87hgti/egs-doctalk-frontend:latest -f frontend/Dockerfile .

docker buildx build --platform linux/amd64 --network=host -t vdfijhnf8yerf87hgti/egs-doctalk-peerjs:latest -f peerJS/Dockerfile .

docker buildx build --platform linux/amd64 --network=host -t vdfijhnf8yerf87hgti/egs-doctalk-backend:latest -f EGS-Backend/Backend/Dockerfile .

docker buildx build --platform linux/amd64 --network=host -t vdfijhnf8yerf87hgti/egs-doctalk-appoint:latest -f AppointmentService/AppointmentService/Dockerfile .

docker buildx build --platform linux/amd64 --network=host -t vdfijhnf8yerf87hgti/egs-doctalk-webrtc:latest -f WebRTC/Dockerfile .

echo "Pushing images..."

docker push vdfijhnf8yerf87hgti/egs-doctalk-auth:latest

docker push vdfijhnf8yerf87hgti/egs-doctalk-notif:latest

docker push vdfijhnf8yerf87hgti/egs-doctalk-frontend:latest

docker push vdfijhnf8yerf87hgti/egs-doctalk-peerjs:latest

docker push vdfijhnf8yerf87hgti/egs-doctalk-backend:latest

docker push vdfijhnf8yerf87hgti/egs-doctalk-appoint:latest

docker push vdfijhnf8yerf87hgti/egs-doctalk-webrtc:latest