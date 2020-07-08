#! /usr/bin/perl -w
# Xsane to Tesseract by EquinoxeFR (http://www.equinoxefr.org/wp-content/uploads/2008/07/xsane2tess.pl)

# Using Tesseract 3.04, I tested that Tesseract accepts raw input. I drop the conversion to TIFF.
# Dominique Meeùs <dominique@d-meeus.be>, www.d-meeus.be, 23-4-2017.
# Slow Tesseract 4, workaround about thread limit, rev. 1-6-2018.

# Add image save by Pierre Brochard, pierre.brochard.1982@m4x.org, logicielnarcisse.fr, 20190810.

use strict;
use Getopt::Long;

my $logfile = "/tmp/tesseract$$.log";
my $lang;
my $inputfile;
my $outputfile;

GetOptions ('log=s' => \$logfile,
	    'l=s' => \$lang,
	    'i=s' => \$inputfile,
	    'o=s' => \$outputfile
    );

open (LOG,"> $logfile") or die "Error Opening log file $logfile\n";

print LOG "Xsane to Tesseract by EquinoxeFR\n";
print LOG "-i $inputfile\n";
print LOG "-o $outputfile\n";
print LOG "-l $lang\n";

print LOG `OMP_THREAD_LIMIT=1 convert "${inputfile}" "${outputfile}.png" 2>&1`;
print LOG `OMP_THREAD_LIMIT=1 tesseract "${inputfile}" "${outputfile}" -l $lang 2>&1`;

unlink( "${outputfile}");

close(LOG);
