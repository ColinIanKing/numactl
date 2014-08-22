# Compatibility with older versions of autoconf and automake.
# These macros are used by definitions from autoconf-archive.
# Add these definitions to fallback to when using older versions.
# Tested with autoconf 2.63 and automake 1.10.1.

# From m4/substnot.m4 in automake.git.
# AM_SUBST_NOTMAKE introduced in automake 1.11
#
# Copyright (C) 2006-2014 Free Software Foundation, Inc.
#
# This file is free software; the Free Software Foundation
# gives unlimited permission to copy and/or distribute it,
# with or without modifications, as long as this notice is preserved.

ifdef([AM_SUBST_NOTMAKE],[],[
AC_DEFUN([AM_SUBST_NOTMAKE])])


# From lib/m4sugar/m4sugar.m4 in autoconf.git
# m4_ifnblank introduced in autoconf 2.64
# m4_map_args_w introduced in autoconf 2.63b
#
# Copyright (C) 1999, 2000, 2001, 2002, 2003, 2004, 2005, 2006, 2007,
# 2008 Free Software Foundation, Inc.
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2, or (at your option)
# any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA
# 02110-1301, USA.
#
# As a special exception, the Free Software Foundation gives unlimited
# permission to copy, distribute and modify the configure scripts that
# are the output of Autoconf.  You need not follow the terms of the GNU
# General Public License when using or distributing such scripts, even
# though portions of the text of Autoconf appear in them.  The GNU
# General Public License (GPL) does govern all other use of the material
# that constitutes the Autoconf program.
#
# Certain portions of the Autoconf source text are designed to be copied
# (in certain cases, depending on the input) into the output of
# Autoconf.  We call these the "data" portions.  The rest of the Autoconf
# source text consists of comments plus executable code that decides which
# of the data portions to output in any given case.  We call these
# comments and executable code the "non-data" portions.  Autoconf never
# copies any of the non-data portions into its output.
#
# This special exception to the GPL applies to versions of Autoconf
# released by the Free Software Foundation.  When you make and
# distribute a modified version of Autoconf, you may extend this special
# exception to the GPL to apply to your modified version as well, *unless*
# your modified version has the potential to copy into its output some
# of the text that was the non-data portion of the version that you started
# with.  (In other words, unless your change moves or copies text from
# the non-data portions to the data portions.)  If your modification has
# such potential, you must delete any notice of this special exception
# to the GPL from your modified version.
#
# Written by Akim Demaille.

ifdef([m4_ifnblank],[],[
AC_DEFUN([m4_ifnblank],
[m4_if(m4_translit([[$1]],  [ ][	][
]), [], [$3], [$2])])])

ifdef([m4_map_args_w],[],[
AC_DEFUN([m4_map_args_w],
[_$0(_m4_split([ ]m4_flatten([$1])[ ], [[	 ]+],
	       m4_if(m4_index([$2$3$4], [\]), [-1], [[$3[]$4[]$2]],
		     [m4_bpatsubst([[$3[]$4[]$2]], [\\], [\\\\])])),
     m4_len([[]$3[]$4]), m4_len([$4[]$2[]]))])
AC_DEFUN([_m4_map_args_w],
[m4_substr([$1], [$2], m4_eval(m4_len([$1]) - [$2] - [$3]))])])

