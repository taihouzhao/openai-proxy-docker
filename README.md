# OpenAI Proxy Docker
OpenAI API Proxy by Docker


## How to use
Just:

```shell
sudo docker run -d -p 9017:9017 shawnai/openai-proxy-docker:latest
```

Now, you can check if it works by OpenAI Chat Completion API: ```YOURIP:9017/v1/chat/completions```

It should be the same as ```api.openai.com/v1/chat/completions```


## How to maintain
Use PM2 to scale up this proxy application accross CPU(s):
- Listing managed processes
> ```shell
> docker exec -it <container-id> pm2 list
> ```
- Monitoring CPU/Usage of each process
> ```shell
> docker exec -it <container-id> pm2 monit
> ```
- 0sec downtime reload all applications
> ```shell
> docker exec -it <container-id> pm2 reload all
> ```
