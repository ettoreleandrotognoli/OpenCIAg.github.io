deploy:
	bundle exec jekyll build
	cp -r ./_site /tmp/openciag_site
	git checkout master
	rm -rf *
	cp -r /tmp/openciag_site ./
	git add .
	git commit -m "deploy"
