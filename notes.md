# notes

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

visit <localhost:3000>

## Resources

* [docker/awesome-compose](https://github.com/docker/awesome-compose#readme)
