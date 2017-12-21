# Terraria Docker

```
docker build -t terr .
docker run -ti -v $(pwd)/TerrariaWorlds:/TerrariaWorlds -p 7777:7777 terr
```
