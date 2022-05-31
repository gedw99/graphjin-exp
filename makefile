
GRAPHJIN_BIN_NAME=graphjin
GRAPHJIN_BIN=$(shell which $(GRAPHJIN_BIN_NAME))

export GO_ENV=development

print:
	@echo 
	@echo "GRAPHJIN_BIN_NAME:    $(GRAPHJIN_BIN_NAME)"
	@echo "GRAPHJIN_BIN:         $(GRAPHJIN_BIN)"

	@echo "GO_ENV:               $(GO_ENV)"
	@echo "VERSION:              $(shell $(GRAPHJIN_BIN_NAME) version)"

dep-brew:
	brew install dosco/graphjin/graphjin
dep-brew-delete:
	brew uninstall graphjin

dep-go:
	go install github.com/dosco/graphjin@latest
dep-go-delete:
	rm -f $(GRAPHJIN_BIN)

new:
	$(GRAPHJIN_BIN_NAME) new project01

	