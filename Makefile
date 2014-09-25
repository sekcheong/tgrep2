CC = gcc
FILES = tgrep2.c hash.c drutils.c
OUT_EXE = tgrep2

build: $(FILES)
	$(CC) $(FILES) -o $(OUT_EXE) -lm

clean:
	rm -f *.o $(OUT_EXE) core
