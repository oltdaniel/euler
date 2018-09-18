NOTESDIR := notes
PROBLEMSDIR := problems
SOLVED := 1
SOLVEDNOTES := $(addsuffix .notes, $(SOLVED))

# Compile all notes
notes: $(NOTES)

# Compile a single note
%.note:
	pdflatex -aux-directory=/tmp -output-directory=notes $(NOTESDIR)/.sources/$*.tex
	rm $(NOTESDIR)/$*.aux $(NOTESDIR)/$*.log $(NOTESDIR)/$*.out

# Compile and execute different scripts
%.java: java.container
	docker run --name=euler1_java \
		--rm \
		-v `pwd`/problems/$*/solution.java:/app/solution.java \
		java_euler:latest

# Build containers
%.container:
	docker build -t java_euler - < ./docker/$*.Dockerfile
