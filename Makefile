all: render upload
	echo "done"

render:
	pandoc -s --from=markdown_mmd --to=html MAIN.md --output=site/index.html --template template.html --toc --toc-depth 2

upload:
	s3cmd sync -c ~/.s3personal --acl-public --delete-removed site/ s3://www.ultratall-ultralight.com