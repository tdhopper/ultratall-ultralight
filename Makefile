all: render upload
	git push

render:
	pandoc -s --from=markdown_mmd --to=html MAIN.md --output=site/index.html --template template.html --toc --toc-depth 2

upload:
	find . -name .DS_Store | xargs rm -F
	s3cmd sync -c ~/.s3cfg --acl-public --delete-removed site/ s3://www.ultratall-ultralight.com
