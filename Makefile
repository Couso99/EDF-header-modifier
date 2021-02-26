CC = gcc
CFLAGS  = -g -Wall

default: transform_edf

transform_edf:  create_anon_file.o edf_hdr.o
	$(CC) $(CFLAGS) -o transform_edf create_anon_file.o edf_hdr.o

create_anon_file.o:  create_anon_file.c edf_hdr.h
	$(CC) $(CFLAGS) -c create_anon_file.c

edf_hdr.o:  edf_hdr.c edf_hdr.h
	$(CC) $(CFLAGS) -c edf_hdr.c

clean:
	$(RM) count *.o *~
