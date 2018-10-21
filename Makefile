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
	docker run --name=euler_java \
		--rm \
		-v `pwd`/problems/$*/solution.java:/app/solution.java \
		java_euler:latest

%.ruby: ruby.container
	docker run --name=euler_ruby \
		--rm \
		-v `pwd`/problems/$*/solution.rb:/app/solution.rb \
		ruby_euler:latest

%.c: c.container
	docker run --name=euler_c \
		--rm \
		-v `pwd`/problems/$*/solution.c:/app/solution.c \
		c_euler:latest

%.python: python.container
	docker run --name=euler_python \
		--rm \
		-v `pwd`/problems/$*/solution.py:/app/solution.py \
		python_euler:latest

# Build containers
%.container:
	docker build -t $*_euler - < ./docker/$*.Dockerfile
