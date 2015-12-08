#rm -rf tags cscope.*
rm -rf tags 
ctags -R --sort=1 --c++-kinds=+p --fields=+iaS --extra=+q --language-force=C++
#-f cpp ~/.vim/tags/cpp_src
find . -name '*.[ch]' > cscope.files
cscope -bqkR
#gtags
./gen_filenametags.sh
