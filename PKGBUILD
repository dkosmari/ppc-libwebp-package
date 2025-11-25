pkgname=ppc-libwebp
pkgver=1.6.0
pkgrel=1
pkgdesc='A library to encode and decode images in WebP format.'
arch=('any')
url='https://chromium.googlesource.com/webm/libwebp/'
license=('BSD')
options=(!strip libtool staticlibs)
makedepends=('dkp-toolchain-vars')
source=("https://storage.googleapis.com/downloads.webmproject.org/releases/webp/libwebp-$pkgver.tar.gz")
groups=('ppc-portlibs')

build() {
  cd libwebp-$pkgver

  source /opt/devkitpro/ppcvars.sh

  ./configure \
    --prefix="${PORTLIBS_PREFIX}" \
    --host=powerpc-eabi \
    --disable-shared \
    --enable-static \
    --enable-libwebpdecoder \
    --enable-libwebpdemux \
    --enable-libwebpmux

  make
}

package() {
  cd libwebp-$pkgver

  make DESTDIR="${pkgdir}" install

  # FIX: libwebp builds a bunch of programs useless for cross compilation.
  rm -rfv "${pkgdir}/${PORTLIBS_PREFIX}/bin"
  rm -rfv "${pkgdir}/${PORTLIBS_PREFIX}/share"
}

sha256sums=('e4ab7009bf0629fd11982d4c2aa83964cf244cffba7347ecd39019a9e38c4564')
