# $Id$

ROOTDIR=../..
include ${ROOTDIR}/Makefile.path

GCRC_BASE=src

LIBRARY=	libgcrcutil
INCLUDES+=	-I${GCRC_BASE}
SRCS+=		gcrcutil.cc
SRCS+=		${GCRC_BASE}/crc32c_sse4.cc
SRCS+=		${GCRC_BASE}/multiword_128_64_gcc_amd64_sse2.cc
SRCS+=		${GCRC_BASE}/multiword_64_64_cl_i386_mmx.cc
SRCS+=		${GCRC_BASE}/multiword_64_64_gcc_amd64_asm.cc
SRCS+=		${GCRC_BASE}/multiword_64_64_gcc_i386_mmx.cc
SRCS+=		${GCRC_BASE}/multiword_64_64_intrinsic_i386_mmx.cc

include ${MAINMK}
