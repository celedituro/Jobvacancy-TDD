Job Vacancy Application
=======================

[![build status](https://gitlab.com/fiuba-memo2/alumnos-jobvacancy/celeste/badges/master/pipeline.svg)](https://gitlab.com/fiuba-memo2/alumnos-jobvacancy/celeste/commits/master)

## Padrino application setup

1. Run **_bundle install --without staging production_**, to install all application dependencies
2. Run **_RACK_ENV=test bundle exec rake_**, to run all tests and ensure everything is properly setup
3. Run **_RACK_ENV=development bundle exec rake db:migrate db:seed_**, to setup the development database
4. Run **_bundle exec padrino start -h 0.0.0.0_**, to start the application

For authenticating as an offerer you can use the credentials offerer@test.com / Passw0rd!

## Some conventions to work on it:

* Follow existing coding conventions
* Use feature branch
* Add descriptive commits messages in English to every commit
* Write code and comments in English
* Use REST routes


## Using Docker-compose for development

```
$ docker-compose run --rm webapp bundle exec rake db:migrate
$ docker-compose up -d
$ docker-compose exec webapp /bin/bash
```