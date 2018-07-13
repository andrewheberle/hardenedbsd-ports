# $FreeBSD$
#
# Compile a port with Cross-DSO CFI
#
# Feature:	cdcfi
# Usage:	USES=cdcfi
#
# MAINTAINER:	shawn.webb@hardenedbsd.org

.if !defined(_INCLUDE_USES_CDCFI_MK)
_INCLUDE_USES_CDCFI_MK=    yes

CFLAGS+=	-flto
CXXFLAGS+=	-flto
LDFLAGS+=	-flto
.if !defined(CDCFI_LIB)
CFLAGS+=	-fsanitize-cfi-cross-dso
CXXFLAGS+=	-fsanitize-cfi-cross-dso
LDFLAGS+=	-fsanitize-cfi-cross-dso
.endif

.endif
