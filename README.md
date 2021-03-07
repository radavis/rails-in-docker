# rails-in-docker

[[source](https://docs.docker.com/compose/rails/)]

create an alias for `docker-compose`

```bash
$ alias dc="docker-compose"
```

build the project

```bash
$ dc run --no-deps web rails new . --force --database=postgresql
```

fix permissions

```bash
$ sudo chown -R $USER:$USER .
```

build again

```bash
$ dc build
```

update `config/database.yml` with `host: db` and `password: password`, then boot it

```bash
$ dc up
$ dc down  # when you need to take the system down
```

setup the database

```bash
$ dc run web \
    rails db:create
```

visit <http://localhost:3000>

subsequent commands to the `web` service should be prefixed with `dc run web`

you're now at
[this step](https://guides.rubyonrails.org/v5.2/getting_started.html#say-hello-rails)
in the "Getting Started with Rails" guide.

```bash
$ dc run web \
    rails generate controller Welcome index
```

wow. the official tutorial for rails on the docker website doesn't work.

the promise of a better world through containerization has yet to be realized.

why tf am i having to futz with file permissions?

## Resources

* [docker/awesome-compose](https://github.com/docker/awesome-compose#readme)
