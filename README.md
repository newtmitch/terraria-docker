# Terraria Docker

```
docker build -t terr .
docker run --rm --name terraria -ti -v $(pwd):/usr/local/terraria -p 7777:7777 terr
```

If running in AWS / EC2, you can run this command instead to make sure the container comes up with the machine (well, actually, the Docker daemon):
```
docker run --restart unless-stopped --name terraria -tid -v /home/ec2-user/terraria-docker:/usr/local/terraria -p 7777:7777 terr 
```