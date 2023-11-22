IDIR=./include
CC=clang
CFLAGS=-I$(IDIR) -Wall

ODIR=obj
LDIR=../lib

LIBS=-lm

#_DEPS=hellomake.h
#DEPS=$(patsubst %,$(IDIR)/%,$(_DEPS))

_OBJ = ctest.o runtime.o
OBJ = $(patsubst %,$(ODIR)/%,$(_OBJ))

$(ODIR)/%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

hobbit: $(OBJ)
	$(CC) -o $@ $^ $(CFLAGS) $(LIBS)

asm: ctest.c
	$(CC) -fomit-frame-pointer -S $^

scheme: compiler.scm testit.scm
	chez --script testit.scm

.PHONY: clean
clean:
	rm -f $(ODIR)/*.o *~ test $(INCDIR)/*~
	rm hobbit stst

#.PHONY: test
test: hobbit
	./hobbit
