
use strict;
use warnings;



use ExtUtils::MakeMaker 6.30;



my %WriteMakefileArgs = (
  "ABSTRACT" => "Normalize incoming Unicode parameters",
  "AUTHOR" => "John Barrett <john\@jbrt.org>",
  "BUILD_REQUIRES" => {},
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => "6.30"
  },
  "DISTNAME" => "Dancer2-Plugin-UnicodeNormalize",
  "EXE_FILES" => [],
  "LICENSE" => "perl",
  "NAME" => "Dancer2::Plugin::UnicodeNormalize",
  "PREREQ_PM" => {
    "Carp" => 0,
    "Dancer2" => 0,
    "Dancer2::Plugin" => 0,
    "Unicode::Normalize" => 0,
    "strict" => 0,
    "warnings" => 0
  },
  "TEST_REQUIRES" => {
    "Dancer2::Test" => 0,
    "Digest::MD5" => 0,
    "Encode" => 0,
    "FindBin" => 0,
    "Test::More" => 0,
    "autodie" => 0,
    "charnames" => 0,
    "utf8" => 0
  },
  "VERSION" => "0.03",
  "test" => {
    "TESTS" => "t/*.t"
  }
);


my %FallbackPrereqs = (
  "Carp" => 0,
  "Dancer2" => 0,
  "Dancer2::Plugin" => 0,
  "Dancer2::Test" => 0,
  "Digest::MD5" => 0,
  "Encode" => 0,
  "FindBin" => 0,
  "Test::More" => 0,
  "Unicode::Normalize" => 0,
  "autodie" => 0,
  "charnames" => 0,
  "strict" => 0,
  "utf8" => 0,
  "warnings" => 0
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.63_03) } ) {
  delete $WriteMakefileArgs{TEST_REQUIRES};
  delete $WriteMakefileArgs{BUILD_REQUIRES};
  $WriteMakefileArgs{PREREQ_PM} = \%FallbackPrereqs;
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



