# TODO: Rewrite as Makefile

CC="${CC:-clang}"

if [ ! -d libxml2 ]; then
  git clone https://github.com/GNOME/libxml2.git
fi

cd libxml2
./autogen.sh
./configure --disable-shared --without-python
make
cd ..

${CC} -fsanitize=fuzzer ./harness.c libxml2/.libs/libxml2.a -o harness -I libxml2/include
