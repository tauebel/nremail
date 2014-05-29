An API endpoint that sends an email when someone submits a POST request with JSON content.

In the wild: http://nremail.herokuapp.com

```
Sample payload:
{ "to": "Dave <dave@example.com>", "subject": "hello world", "body": "Hi Dave! Sending you an email via this API I just made." }
```

Try it yourself, replacing the "to" with your own email if you'd like to receive it:
```
curl -X POST -H "Content-Type: application/json" --data '{ "to": "Dave <dave@example.com>", "subject": "hello world", "body": "great to meet you!" }' http://nremail.herokuapp.com
```