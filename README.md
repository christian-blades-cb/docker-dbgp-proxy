# DBGp Proxy Image

Proxy your xdebug sessions through a separate container so that you don't have to do any fancy routing to debug your PHP sessions running in containers.

## How do I use it?

Tell PHP in your container about the proxy server. There are a few ways of doing this, but the PHP variable you want is `xdebug.remote_host`.

After that, configure your IDE to use the DBGp proxy running on this container.

## Example ##

```
$ docker run -d -P christianbladescb/dbgpproxy --name=dbgpproxy
$ docker run --link=dbgpproxy:dbgpproxy -e XDEBUG_CONFIG="PHPSTORM" org/applicationimage php -dxdebug.remote_host=$DBGPPROXY_PORT_9001_TCP_ADDR app_entrypoint.php
```

