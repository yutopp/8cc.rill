.PHONY: all clean

all: 8cc elc hello.out

clean:
	-rm *.bc *.o *.eir
	-rm 8cc elc hello.out

8cc: src/8cc.rill
	rillc -o $@ $<

elc: src/elc.rill
	rillc -o $@ $<

hello.out: examples/hello.c 8cc elc
	cat examples/hello.c | ./8cc > hello.eir
	(echo x86 && cat hello.eir) | ./elc > hello.out
	chmod +x hello.out
