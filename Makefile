SRC=$(wildcard *.tex)
OBJ=$(SRC:.tex=.pdf)

all: compil clean

compil: $(OBJ)

%.pdf: %.tex
	pdflatex $^

clean:
	rm -rf *.aux *.log *.out

mrproper:
	make clean
	rm -rf *.pdf
