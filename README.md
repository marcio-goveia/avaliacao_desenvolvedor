# Steps to get this app runnung

## requirements
ruby version: ruby-2.2.10

## Install

### Clone the repository

```shell
git clone git@github.com:marciosg4/avaliacao_desenvolvedor.git
cd avaliacao_desenvolvedor
```

### Check your Ruby version

```shell
ruby -v
```

The ouput should start with something like `ruby 2.2.10`

If not, install the right ruby version using [rvm](https://rvm.io/rvm/install):

```shell
rvm install ruby-2.2.10
```

### Install dependencies

Using [Bundler](https://github.com/bundler/bundler)

```shell
bundle
```

### Initialize the database

```shell
rails db:create db:migrate
```

## Serve

```shell
rails s
```
