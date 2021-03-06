--		Copyright 1995-2002 by Daniel R. Grayson

-- This version of 'run' doesn't handle pipes or redirection, of course
-- but it's an advantage to have this facility without depending on an outside shell.
-- We comment it out because some systems don't have wordexp() in libc, upon which 
-- expandWord is based.
-- run = cmd -> if (pid := fork()) == 0 then exec expandWord cmd else wait pid

restart = Command ( 
     () -> (
	  restarting = true;
	  runEndFunctions();
	  scan(openFiles(), f -> if f =!= stdio and f =!= stderr then close f);
	  exec if member("--restarted",commandLine) then commandLine else join({commandLine#0,"--restarted"},drop(commandLine,1))
	  )
     )

setRandomSeed = method()
installMethod(setRandomSeed, () -> rawRandomInitialize())
setRandomSeed ZZ := seed -> randomSeed = seed		    -- magic assignment, calls rawSetRandomSeed internally
setRandomSeed String := seed -> setRandomSeed fold((i,j) -> 101*i + j, 0, ascii seed)

-- Local Variables:
-- compile-command: "make -C $M2BUILDDIR/Macaulay2/m2 "
-- End:
