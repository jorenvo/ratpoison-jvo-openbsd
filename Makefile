COMMENT=	minimal wm based on GNU screen

DISTNAME=	ratpoison-jvo-1.4.10
REVISION=	2

CATEGORIES=	x11
HOMEPAGE=	https://www.nongnu.org/ratpoison/

MAINTAINER=	Joren Van Onder <joren@jvo.sh>

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += 	X11 Xft Xrandr Xtst c

GH_ACCOUNT=	jorenvo
GH_PROJECT=	ratpoison
GH_COMMIT=	137d802d00f4f2846bd3e4ec86e628a7d47794c3

# DEBUG_PACKAGES=		${BUILD_PACKAGES}

SEPARATE_BUILD=		Yes
CONFIGURE_STYLE=	autoreconf gnu
AUTORECONF=		./autogen.sh
AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.15
CONFIGURE_ARGS+=	--with-xterm=${X11BASE}/bin/xterm

.include <bsd.port.mk>
