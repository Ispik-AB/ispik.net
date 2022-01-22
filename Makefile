watch:
	npx tailwindcss -i ./src/input.css -o ./dist/output.css --watch

deploy:
	npm run build:production
	sed -e 's#/dist/output.css#style.css#g' src/index.html > dist/index.html
	cp src/logo.jpg dist/

clean:
	rm dist/*

.PHONY: deploy clean
