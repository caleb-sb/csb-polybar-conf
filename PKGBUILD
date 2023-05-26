# Maintainer: Caleb Bredekamp
pkgname=csb-polybar-conf-git
_pkgname=csb-polybar-conf
pkgver=v0.0.1.r6.gb94af59
pkgrel=1
_destname1="/etc/skel/.config/polybar/"
pkgdesc="Caleb's polybar configuration"
arch=('any')
url="https://github.com/caleb-sb/${_pkgname}.git"
license=('MIT')
depends=('polybar')
makedepends=('git')
replaces=("arcolinux-polybar-git")
provides=("${pkgname}")
conflicts=()
options=(!strip !emptydirs)
source=(${_pkgname}::"git+${url}")
sha256sums=('SKIP')
package() {
	install -dm 755 ${pkgdir}${_destname1}
	cp -r ${srcdir}/${_pkgname}/* ${pkgdir}${_destname1}
}
pkgver() {
	cd "$_pkgname"
	git describe --long | sed 's/\([^-]*-g\)/r\1/;s/-/./g'
}
