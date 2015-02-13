deploy:
	haxe compile.hxml
	zip KnockoutValidationHx.zip ./* -x .git .idea bin .gitignore *.iml
	haxelib submit KnockoutValidationHx.zip
	rm -f KnockoutValidationHx.zip

test:
	haxe compile.hxml

install:
	haxelib install knockout.hx

.PHONY: test install deploy
