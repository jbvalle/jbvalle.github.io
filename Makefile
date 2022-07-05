.PHONE=

all: update

update: FORCE
	git add .
	git commit -m "upd"
	git push origin main

FORCE:
