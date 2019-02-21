# Fake SMSC

[User guide](http://seleniumsoftware.com/user-guide.htm)

## Build

```
$sudo docker build --tag=smsc .
```

## Running

$sudo docker run -d -p "8888:88" -p "2775:2775" smsc

On the browser navigate to `localhost:8888`

## Troubleshooting

### Approch 1

Get container instance id for the running image smsc

```
$sudo docker ps
```

Stop the container by its instance id

```
$sudo docker stop <instance id>
```

Run the container shell

```
$docker run -it --entrypoint=/bin/sh smsc
```

Start smsc
```
#./startsmppsim.sh
```

### Approach 2

Get container instance id for the running image smsc

```
$sudo docker ps
```

Attach to its shell
```
$sudo docker exec -it <instance id> /bin/sh
```
