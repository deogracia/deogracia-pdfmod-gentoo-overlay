# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

inherit eutils autotools-utils dotnet

DESCRIPTION="PDF Mod is a simple application for modifying PDF documents."
HOMEPAGE="https://wiki.gnome.org/Apps/PdfMod"
SRC_URI="https://git.gnome.org/browse/${PN}/snapshot/${P}.tar.xz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

RDEPEND="
    >=dev-lang/mono-2.10.9-r2
    >=dev-dotnet/gtk-sharp-2.12.10
    >=dev-dotnet/glib-sharp-2.12.10
    >=dev-dotnet/gconf-sharp-2.24.2
    >=dev-dotnet/gnome-sharp-2.24.2
    >=dev-dotnet/hyena-0.5"
DEPEND="${RDEPEND}"

DOCS=(AUTHORS COPYING HACKING MAINTAINERS NEWS README README.releasing)

AUTOTOOLS_AUTORECONF=1

src_prepare() {
    autotools-utils_src_prepare
}

src_configure() {
    autotools-utils_src_configure
}

