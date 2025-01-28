CREATE or REPLACE PROCEDURE 
HGETI(IN name VARCHAR(50)) RETURNS INT
  LANGUAGE OBJECTSCRIPT 
  {
 	quit $get(^||host($g(name,"%")))
  }
