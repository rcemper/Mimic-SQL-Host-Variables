CREATE or REPLACE  
PROCEDURE HDEC(IN name VARCHAR(50), IN val VARCHAR(50)) RETURNS INT 
  LANGUAGE OBJECTSCRIPT 
  { 	set ^||host($g(name,"%"))=$g(val)
	quit $$$OK
  } 
