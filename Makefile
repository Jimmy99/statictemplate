build: example/template/template.go

test:
	go test ./...

example/template/template.go: example/template/*.tmpl
	statictemplate -html -o $@ -t "Index:index.tmpl:[]github.com/bouk/statictemplate/example.Post" $^

.PHONY: test build
