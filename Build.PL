
use strict;
use warnings;

use Module::Build 0.3601;


my %module_build_args = (
  "build_requires" => {
    "Data::Dump" => 0,
    "File::Find" => 0,
    "File::Temp" => 0,
    "Module::Build" => "0.3601",
    "Test::Exception" => 0,
    "Test::More" => "0.88",
    "mocked" => 0,
    "unmocked" => 0
  },
  "configure_requires" => {
    "Module::Build" => "0.3601"
  },
  "dist_abstract" => "Perl interface to Janrain's RPX service",
  "dist_author" => [
    "Scott McWhirter <konobi\@cpan.org>",
    "Kent Fredric <kentnl\@cpan.org>"
  ],
  "dist_name" => "Net-API-RPX",
  "dist_version" => "0.04",
  "license" => "bsd",
  "module_name" => "Net::API::RPX",
  "recommends" => {},
  "recursive_test_files" => 1,
  "requires" => {
    "JSON::Any" => 0,
    "LWP::UserAgent" => 0,
    "Moose" => 0,
    "Throwable::Error" => 0,
    "Throwable::X" => 0,
    "URI" => 0,
    "namespace::autoclean" => 0,
    "strict" => 0,
    "warnings" => 0
  },
  "script_files" => []
);


my $build = Module::Build->new(%module_build_args);

$build->create_build_script;
