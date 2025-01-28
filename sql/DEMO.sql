SELECT 
CASE
  WHEN HDEC('rcc',66) > 0  -- set host var 
   THEN HGETI('rcc')-5||' ** '||HGETV('rcc')
END  
