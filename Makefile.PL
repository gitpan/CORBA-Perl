use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    'NAME'          => 'CORBA::Perl',
    'VERSION_FROM'  => 'cdr.pm',
    'ABSTRACT'      => 'IDL compiler to Perl mapping',
    'PREREQ_PM'     => {
                        'CORBA::IDL::node'  => 2.40,
    },
    'PM'            => {
                        'name.pm'       => '$(INST_LIBDIR)/Perl/name.pm',
                        'literal.pm'    => '$(INST_LIBDIR)/Perl/literal.pm',
                        'cdr.pm'        => '$(INST_LIBDIR)/Perl/cdr.pm',
                        'client.pm'     => '$(INST_LIBDIR)/Perl/client.pm',
                        'CORBA.pm'      => '$(INST_LIBDIR)/Perl/CORBA.pm',
    },
    'EXE_FILES'     => [ 'idl2pm.pl', 'idl2pmcli.pl' ],
    'AUTHOR'        => "Francois PERRAD (francois.perrad\@gadz.org)",
    'dist'          => {
                        'COMPRESS'      => 'gzip',
                        'SUFFIX'        => '.gz',
    },
);
