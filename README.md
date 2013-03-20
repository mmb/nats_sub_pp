Provides a command 'nats-sub-pp' which is the same as the NATS messaging system nats-sub command with the addition of:

* formats and colorizes all messages as JSON
* can be given 'bosh' as a server to parse the NATS server from your current bosh deployment

Usages:

```sh
gem install nats_sub_pp

nats-sub-pp nats://localhost:4222 'router.register'

nats-sub-pp bosh '>'
```
