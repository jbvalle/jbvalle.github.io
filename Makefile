all: update

update: FORCE
	git add .
	git commit -m "upd"
	git push origin main -f

launch: FORCE
	firefox index.html

FORCE:

.PHONY = update launch FORCE
