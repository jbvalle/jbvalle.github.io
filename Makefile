.PHONE=update launch

all: update

update: FORCE
	git add .
	git commit -m "upd"
	git push origin main

launch: FORCE
	firefox index.html

FORCE:
