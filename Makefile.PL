use strict;
use warnings;

use inc::Module::Install;

my $dist = 'Task-HTML5';
my $fn   = "lib/$dist.pm"; $fn =~ s#-#/#g;

name                $dist;
perl_version_from   $fn;
version_from        $fn;
abstract_from       $fn;
readme_from         $fn;
author              'Toby Inkster <tobyink@cpan.org>';
license             'perl';

requires 'HTML::HTML5::Parser' => '0.04';
requires 'HTML::HTML5::Sanity' => '0.04';
requires 'HTML::HTML5::Writer' => '0.04';
requires 'XML::LibXML'         => '1.60'; 

resources(
	'homepage'   => "http://search.cpan.org/dist/$dist/",
	'repository' => "http://goddamn.co.uk/viewvc/perlmods/$dist/",
	'bugtracker' => "http://rt.cpan.org/Dist/Display.html?Queue=$dist",
	);
	
write_doap_changes;
write_doap_changes_xml;

auto_install;
WriteAll(
	'meta' => 1,
	'sign' => 0,
	);
