# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

inherit eutils dotnet mono autotools-utils

DESCRIPTION="Hyena is a C# library used to make awesome applications"
HOMEPAGE="https://wiki.gnome.org/Hyena"
SRC_URI="http://ftp.gnome.org/pub/GNOME/sources/${PN}/${PV}/${P}.tar.bz2"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE="debug"

DEPEND="
    >=dev-lang/mono-2.10.9-r2
    >=dev-dotnet/glib-sharp-2.12.10
    >=dev-dotnet/gtk-sharp-2.12.10"
RDEPEND="${DEPEND}
    >=virtual/pkgconfig-0-r1"

PATCHES=(
    "${FILESDIR}"/${P}_remove_dnl-lines.patch
)

DOCS=(COPYING NEWS README)

src_prepare() {
    autotools-utils_src_prepare
}

src_configure() {
    local myeconfargs=(
        $(use_enable debug)
    )
    autotools-utils_src_configure
}
