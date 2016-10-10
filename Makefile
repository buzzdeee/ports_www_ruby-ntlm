# $OpenBSD$

COMMENT =	message creator and parser for NTLM 

DISTNAME =	rubyntlm-0.6.1
CATEGORIES =	www

HOMEPAGE =	https://github.com/winrb/rubyntlm

# MIT
PERMIT_PACKAGE_CDROM = Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

TEST_DEPENDS =		${BASE_PKGPATH}

do-test:
	cd ${WRKSRC}/test && ${RUBY} runner.rb

.include <bsd.port.mk>
