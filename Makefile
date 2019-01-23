serve:
	bundle exec jekyll serve -H 0.0.0.0

deploy:
	JEKYLL_ENV=production bundle exec jekyll build
	rm -rf /tmp/openciag_site
	cp -r ./_site /tmp/openciag_site
	git checkout master
	rm -rf *
	cp -r /tmp/openciag_site/* ./
	git add .
	git commit -m "deploy"
	git push github master
