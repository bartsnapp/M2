--- status: DRAFT
--- author(s): MES
--- notes: 

document { 
     Key => {check,(check,Package),(check,String),(check,ZZ,Package),(check,ZZ,String),[check,UserMode]},
     Headline => "perform tests of a package",
     PARA {
     	  "It is important for package authors to provide tests to insure that the package
     	  is functioning properly.  One provides tests using  ", TO TEST,
     	  " in the ", TO beginDocumentation, " section."
	  },
     SYNOPSIS (
	  Usage => "check P",
	  BaseFunction => check,
	  Inputs => {
	       "P" => {ofClass {Package, String}},
	       UserMode => Boolean => { "whether the M2 processes started to run the tests will ignore packages installed in the user's 
	       	    ", TO2{"applicationDirectory", "application directory"}, "."
		    }
	       },
	  Consequences => {
	       "The tests in the package ", TT "P", " are run (in separate Macaulay 2 processes), and 
	       any errors are reported."
	       },     
	  PARA {
	       "For example, to run the tests for the LLLBases package (Lenstra-Lenstra-Lovasz bases)
	       do the following."
	       },
	  PRE///installPackage "LLLBases"
check LLLBases///,
	  PARA{
	       "Alternatively, if the package is already installed somewhere accessible, one can do the
	       following."
	       },
	  PRE///check "LLLBases"///,
	  ),
     SYNOPSIS (
	  Usage => "check(i,P)",
	  BaseFunction => check,
	  Inputs => {
	       "i" => ZZ => "the number of the test to run",
	       "P" => {ofClass {Package, String}},
	       UserMode => Boolean => { "whether the M2 processes started to run the tessts will ignore packages installed in the user's 
	       	    ", TO2{"applicationDirectory", "application directory"}, "."
		    }
	       },
	  Consequences => {
	       "The i-th test in the package P is run (in separate Macaulay 2 processes), and 
	       any errors are reported."
	       },     
	  PARA {
	       "For example, to run the tests for the LLLBases package (Lenstra-Lenstra-Lovasz bases)
	       do the following."
	       },
	  PRE///installPackage "LLLBases"
check LLLBases///,
	  PARA{
	       "Alternatively, if the package is already installed somewhere accessible, one can do the
	       following."
	       },
	  PRE///check "LLLBases"///,
	  ),
     Caveat => { "Currently, if the package was only partially loaded because the documentation was
	  obtainable from a database (see ", TO "beginDocumentation", "), then the package will be reloaded,
	  this time completely, to ensure that all tests are considered; this may affect user objects
	  of types declared by the package, as they may be not usable by the new instance of the 
	  package.  In a future version, either the tests and the documentation will both be cached, 
	  or neither will."
	  },
     SeeAlso => {"packages", installPackage, loadPackage}
     }