rm cscope.files
find . -name "*.cpp" >> ./cscope.files
find . -name "*.c" >> ./cscope.files
find . -name "*.h" >> ./cscope.files
find . -name "*.xml" >> ./cscope.files
find . -name "*.asm" >> ./cscope.files
find . -name "*akefil*" >> ./cscope.files
cscope -b

