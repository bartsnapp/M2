--- status: TODO
--- author(s): 
--- notes: 

document { 
     Key => indices,
     Headline => "indices of a polynomial; also components for a direct sum",
     TT "indices", " has two uses in Macaulay2: indices of a direct sum, or indices of a
     polynomial.  Additionally, the symbol is used as a key in a direct sum
     under which to store a list of the preferred  keys used
     to index the components of the direct sum.",
     SeeAlso => {"directSum", "components", "indexComponents",index,support}
     }
document { 
     Key => (indices,HashTable),
     Headline => "preferred indices of a direct sum",
     Usage => "",
     Inputs => {
	  },
     Outputs => {
	  },
     Consequences => {
	  },     
     "description",
     EXAMPLE {
	  },
     Caveat => {},
     SeeAlso => {"directSum", "components", "indexComponents"}
     }
document { 
     Key => (indices,RingElement),
     Headline => "indices of variables occuring in a polynomial",
     Usage => "indices f",
     Inputs => {
	  "f" => "in a polynomial ring"
	  },
     Outputs => {
	  List => "of integers, the indices of the variables 
	    occuring in the polynomial"
	  },
     "The first variable in a polynomial ring has index 0, the second has index 1, etc.
     This function returns a list (in ascending order) of the indices of all
     of the variables which occur in ", TT "f", ".",
     EXAMPLE {
	  "R = QQ[a..g]",
	  "f = a^3+b^2*c+3*f^10*d-1+e-e",
	  "indices f",
	  "index a",
	  "support f"
	  },
     "This use of ", TO indices, " has no relationship with the use for
     specifying parts of a direct sum",
     SeeAlso => {index, support, indices, (symbol_,Ring,ZZ)}
     }
 -- doc6.m2:1387:     Key => indices,
