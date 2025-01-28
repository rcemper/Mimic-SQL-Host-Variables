CREATE or REPLACE  
PROCEDURE HDEL(IN name VARCHAR(50)) RETURNS INT
  LANGUAGE OBJECTSCRIPT 
  { 	kill ^||host($g(name,"%"))
	quit $$$OK
  } 
