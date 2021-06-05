COMMENT=	minimal wm based on GNU screen

V=		1.4.10-beta-jvo-1
DISTNAME=	ratpoison-${V}
REVISION=	1

CATEGORIES=	x11
HOMEPAGE=	https://www.nongnu.org/ratpoison/

MAINTAINER=	Joren Van Onder <joren@jvo.sh>

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += X11 Xft Xrandr Xtst c

# https://github.com/jorenvo/ratpoison/archive/refs/tags/ratpoison-1.4.10-beta-jvo-1.tar.gz
MASTER_SITES=		https://github.com/jorenvo/ratpoison/archive/refs/tags/
EXTRACT_SUFFIX=		.tar.gz

# DEBUG_PACKAGES=		${BUILD_PACKAGES}

SEPARATE_BUILD=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-xterm=${X11BASE}/bin/xterm

.include <bsd.port.mk>
