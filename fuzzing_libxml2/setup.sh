if [ ! -d libxml2 ]; then
  git clone https://github.com/GNOME/libxml2.git
fi

if [ -f patches/*.patch ]; then
  git am patches/*.patch -C libxml2
fi
