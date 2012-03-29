generate-js: deps
	@find src -name '*.coffee' | xargs coffee -c -o lib

remove-js:
	@rm -fr lib/

deps:
	@test `which coffee` || echo 'You need to have CoffeeScript in your PATH.\nPlease install it using `brew install coffee-script` or `npm install coffee-script`.'

test: generate-js
	@./node_modules/.bin/mocha --reporter <%= options[:test_framework] %> -r <%= options[:test_framework] %>/<%= options[:test_framework] %>_helper.js <%= options[:test_framework] %>/<%= project_name %>_<%= options[:test_framework] %>.coffee

publish: generate-js
	@test `which npm` || echo 'You need npm to do npm publish... makes sense?'
	npm publish
	@remove-js

link: generate-js
	@test `which npm` || echo 'You need npm to do npm link... makes sense?'
	npm link
	@remove-js
