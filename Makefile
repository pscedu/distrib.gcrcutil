# $Id$

ROOTDIR=../..
include ${ROOTDIR}/Makefile.path

CRC_BASE=src

LIBRARY=	libcrcutil
INCLUDES+=	-I${CRC_BASE}
SRCS+=		crcutil.cc
SRCS+=		${CRC_BASE}/crc32c_sse4.cc
SRCS+=		${CRC_BASE}/multiword_128_64_gcc_amd64_sse2.cc
SRCS+=		${CRC_BASE}/multiword_64_64_cl_i386_mmx.cc
SRCS+=		${CRC_BASE}/multiword_64_64_gcc_amd64_asm.cc
SRCS+=		${CRC_BASE}/multiword_64_64_gcc_i386_mmx.cc
SRCS+=		${CRC_BASE}/multiword_64_64_intrinsic_i386_mmx.cc

include ${MAINMK}
