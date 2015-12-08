rm -rf tags cscope.*
ctags -R --c++-kinds=+p --fields=+iaS --extra=+q 
#find . -name '*.[ch]' > cscope.files
#cscope -bqkR
gtags
#gen_filenametags.sh
