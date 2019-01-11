BLDDIR	:= docs
RELDIR	:= ../../_build/courses/cosc1315/

.PHONY: all
all:
	mkdir -p _build/html/_images/circuits
	sphinx-build -b html -d _build/doctrees . docs

.PHONY: release
release:
	cp -r ${BLDDIR} ${RELDIR}

.PHONY: clean
clean:
	rm -rf _build
