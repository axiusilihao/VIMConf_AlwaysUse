(echo "!_TAG_FILE_SORTED	2	/2=foldcase/";
(find .  -name '*.[ch]' -type f -printf "%f\t%p\t1\n" | \
sort -f)) > filenametags
