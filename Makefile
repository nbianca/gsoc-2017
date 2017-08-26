.PHONY: reports
reports: reports/README.md

reports/README.md: reports/week-*.md
	cat $^ > $@

.PHONY: clean
clean:
	rm -f reports/README.md
