use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    'NAME'          => 'CORBA::Perl',
    'VERSION_FROM'  => 'cdr.pm',
    'ABSTRACT'      => 'IDL compiler to Perl mapping',
    'PREREQ_PM'     => {
                        'CORBA::IDL::node'  => 2.21,
    },
    'PM'            => {
                        'name.pm'       => '$(INST_LIBDIR)/XS/name.pm',
                        'literal.pm'    => '$(INST_LIBDIR)/XS/literal.pm',
                        'cdr.pm'        => '$(INST_LIBDIR)/XS/cdr.pm',
                        'CORBA.pm'      => '$(INST_LIBDIR)/XS/CORBA.pm',
    },
    'EXE_FILES'     => ['idl2pm.pl'],
    'AUTHOR'        => "Francois PERRAD (francois.perrad\@gadz.org)",
    'dist'          => {
                        'COMPRESS'      => 'gzip',
                        'SUFFIX'        => '.gz',
    },
);
