
// CREATE VOL
docker volume create \
  -d ontap-san \
  -name myVol01 \
  -o size=10
# OR Create storage and run container (1-step)
docker run --rm -it --volume-driver netapp-san --volume ndvp_2:/my_vol alpine ash
// END CREATE

// USE VOL
docker run –it \
  -v myVol01:/data \
  --name MyContainer
  alpine \
  ash
// END USE

// REMOVE CONTAINER
docker rm MyContainer
// END CONTAINER

// REMOVE VOL
docker volume rm myVol01
// END REMOVE
