.PHONY: test
base_url = "http://localhost:8000"
api_url = "http://localhost:8000/api"

help:
	@echo
	@echo "======================================================================"
	@echo
	@echo "🛠  UTILS"
	@echo
	@echo "srv:        run dev server"
	@echo "mig:        make and run migrations"
	@echo "super:      create superuser"
	@echo
	@echo "📡  API - shell"
	@echo
	@echo "list:       get all posts"
	@echo "one:        get single post"
	@echo
	@echo "🛰  API - browsable"
	@echo
	@echo "gui-list:   get all posts"
	@echo "gui-one:    get single post"
	@echo
	@echo "🖥  OTHER INTERFACES"
	@echo
	@echo "repl:       explore models from shell"
	@echo "admin:      open admin"
	@echo
	@echo "📦 DEPENDENCIES"
	@echo
	@echo "env:        show environment info"
	@echo "deps:       list prod dependencies"
	@echo
	@echo "======================================================================"
	@echo

#
# 🛠 UTILS
#

srv:
	poetry run python manage.py runserver

mig:
	poetry run python manage.py makemigrations; poetry run python manage.py migrate

super:
	poetry run python manage.py createsuperuser

#
# 📡 API - shell
#

list:
	poetry run http GET $(api_url)/

one:
	poetry run http GET $(api_url)/1/

#
# 🛰 API - browsable
#

gui-list:
	open $(api_url)/

gui-one:
	open $(api_url)/1/

#
# 🖥  UI
#

repl:
	poetry run python manage.py shell_plus --bpython

admin:
	open $(base_url)/admin

#
# 📦 DEPENDENCIES
#

env:
	poetry env info

deps:
	poetry show --tree --no-dev
