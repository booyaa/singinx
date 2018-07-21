# Sinatra + Nginx + Docker compose

## What is this

A little playground for trying out Nginx url rewrite.

## Usage

```shell
$ make serve
# lots of boring noise as software builds
$ curl http://127.0.0.1:8080/foo
foo
$ make clean
```

## Routes

n.b. This is going to change soon

| Method | Sinatra | Nginx |
|--------|---------|-------|
| GET    | /foo    | as-is |
| POST   | /bar    | as-is |

## License

MIT