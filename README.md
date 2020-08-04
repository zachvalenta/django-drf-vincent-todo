# what is this?

Following along to [Will Vincent's DRF todo API tutorial](https://learndjango.com/tutorials/django-rest-framework-tutorial-todo-api).

## run locally

* install dependencies: `poetry install`
* run migrations: `make mig`
* create superuser: `make super`
* start dev server: `make srv`

```Makefile
======================================================================

🛠  UTILS

srv:        run dev server
mig:        make and run migrations
super:      create superuser

📡  API - shell

list:       get all posts
one:        get single post

🛰  API - browsable

gui-list:   get all posts
gui-one:    get single post

🖥  OTHER INTERFACES

repl:       explore models from shell
admin:      open admin

📦 DEPENDENCIES

env:        show environment info
deps:       list prod dependencies

======================================================================
```
