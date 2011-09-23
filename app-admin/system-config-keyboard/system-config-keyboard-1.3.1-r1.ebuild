# Copyright 2004-2011 Sabayon
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="3"
inherit base python

DESCRIPTION="Fedora legacy keyboard management tool."
HOMEPAGE="https://fedorahosted.org/system-config-keyboard/wiki"
SRC_URI="https://fedorahosted.org/released/system-config-keyboard/${P}.tar.gz"

LICENSE="GPL-2"
KEYWORDS="~amd64 ~x86"
SLOT="0"
IUSE=""
DEPEND="dev-util/intltool
	sys-devel/gettext
	dev-util/desktop-file-utils"
RDEPEND="app-admin/firstboot"

PATCHES=(
	"${FILESDIR}/${P}-russian-layout.patch"
)

pkg_postrm() {
	python_mod_cleanup /usr/share/${PN}
}