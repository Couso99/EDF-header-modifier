To compile:
  make
Alternatively:
  gcc -o transform_edf edf_hdr.c crate_anon_file.c

To use:
  ./transform_edf dest_folder original_files/recording.edf

Can take several input files within one execution:
  ./transform_edf dest_folder first_file.edf second_file.edf third_file.edf ...
