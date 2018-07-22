# Sinatra + Nginx + Docker compose

## What is this

A little playground for trying out Nginx URL rewrites.

I needed a way to rewrite incoming URLs `/api/v2/foo` to remove the `v2` and turn it into a parameter instead `version=2`. At the same time, I also needed any incoming URLs `/api/foo` with the version already specified to be left as-is.

This might be a useful project if:

- you need a place to spin up and test nginx configs
- you haven't seen an nginx image used without a `Dockerfile`
- you've never linked containers together using docker compose
- you need a super simple example of sinatra app that's wired up correctly to rackup.

Update: I wrote a [blog post](https://booyaa.wtf/2018/sketchpad-project-sinatra-nginx-docker-compose/) explaining the background behind this project.

## Usage

```shell
$ make serve
# lots of boring noise as software builds
```

in another terminal session

```shell
$ make test
# lots of boring output...
```

after losing several seconds of your life, you can clean up using

```shell
$ make clean
```

## Routes and expected outcomes

| Method | Sinatra     | Nginx    | Params (In) | Params (Out) |
|--------|-------------|----------|-------------|--------------|
| GET    | /api/v2/foo | /api/foo | none        | version=2    |
| POST   | /api/v2/bar | /api/bar | none        | version=2    |
| GET    | /api/foo    | as-is    | version=3   | as-is        |
| POST   | /api/bar    | as-is    | version=3   | as-is        |

## License

MIT