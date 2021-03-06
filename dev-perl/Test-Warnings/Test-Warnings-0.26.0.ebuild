# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DIST_AUTHOR=ETHER
DIST_VERSION=0.026
inherit perl-module

DESCRIPTION='Test for warnings and the lack of them'

SLOT="0"
KEYWORDS="~alpha ~amd64 ~arm ~arm64 ~hppa ~ppc ~ppc64 ~x86 ~ppc-aix ~amd64-fbsd ~x86-fbsd ~amd64-linux ~x86-linux ~ppc-macos ~x64-macos ~x86-macos ~x86-solaris"
IUSE="test suggested"

# Test::Builder -> perl-Test-Simple
RDEPEND="
	!<dev-perl/File-pushd-1.4.0
	virtual/perl-Carp
	virtual/perl-Exporter
	virtual/perl-Test-Simple
	virtual/perl-parent
"
# File::Spec::Functions -> perl-File-Spec
# List::Util -> perl-Scalar-List-Utils
# Test::More -> perl-Test-Simple
DEPEND="
	>=virtual/perl-ExtUtils-MakeMaker-6.300.0
	${RDEPEND}
	test? (
		suggested? (
			>=dev-perl/CPAN-Meta-Check-0.11.0
		)
		>=virtual/perl-CPAN-Meta-2.120.900
		virtual/perl-File-Spec
		>=virtual/perl-Test-Simple-0.108.0
		virtual/perl-if
		virtual/perl-version
	)
"
