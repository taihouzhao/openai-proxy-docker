# openai-proxy-docker
OpenAI API Proxy by Docker


## How to use
```shell
sudo docker run -d -p 9017:9017 shawnai/openai-proxy-docker:latest
```

Now, you can check if it works by OpenAI Chat Completion API: ```YOURIP:9017/v1/chat/completions```

It should be the same as ```api.openai.com/v1/chat/completions```