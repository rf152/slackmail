# Slackmail

Slackmail is a simple email-to-slack proxy.

## Why

You've got a service that supports email notifications for unexpected/interesting
events.  That's great, but you check Slack way more than email (and/or you want to
share the news with a team).  Instead of badgering service XYZ to add support for
slack, just run this server and have them "email" you: `ping@slackmail.mydomain.com`.

## Installation

```
pip install [--user] git+https://github.com/iodine/slackmail
```

# Running

```
slackmail --webhook-url='https://mydomain.slack.com...&token=123'\
  [--listen-address=host:port]
  [--authorization_token=secureME]
```

If you specify the `authorization_token` flag, only messages containing the token
somewhere in the subject or message body will be forwarded to Slack.

By default, the server listens on localhost, port 5025.  This is to simplify testing
locally.  But feel free to run on port 25 and just add an MX record to have it
operate as a "real" email server!
