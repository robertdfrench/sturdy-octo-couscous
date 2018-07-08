# Deploy Twilio-connect App from Heroku Button

A barebones Django app, which can easily be deployed to Heroku and connect to the deploying team's Twilio account.

This application supports the [Getting Started with Python on Heroku](https://devcenter.heroku.com/articles/getting-started-with-python) article - check it out.

## Running Locally
Set up your machine, then set up the app development environment.

### Machine setup (ChromeOS with Crew)
```bash
crew install python3
pip3 install pipenv
crew install postgres
make heroku
```

* To start postgres: `pg_ctl -l logfile start`
* To stop postgres: `pg_ctl stop`
* Create a database: `createdb <dbname>`
* Connect to database: `psql <dbname>`

### App Development Environment
Make sure you have Python [installed properly](http://install.python-guide.org). Also, install the [Heroku CLI](https://devcenter.heroku.com/articles/heroku-cli) and [Postgres](https://devcenter.heroku.com/articles/heroku-postgresql#local-setup).

```sh
$ git clone git@github.com:heroku/python-getting-started.git
$ cd python-getting-started

$ pipenv install

$ createdb python_getting_started

$ python manage.py migrate
$ python manage.py collectstatic

$ heroku local
```

Your app should now be running on [localhost:5000](http://localhost:5000/).

## Deploying to Heroku

```sh
$ heroku create
$ git push heroku master

$ heroku run python manage.py migrate
$ heroku open
```
or

[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy)

## Documentation

For more information about using Python on Heroku, see these Dev Center articles:

- [Python on Heroku](https://devcenter.heroku.com/categories/python)
