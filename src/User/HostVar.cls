Class User.HostVar
{
 ClassMethod GetV(name) As %String [ SqlName = HGETV, SqlProc ]
 {
    quit $get(^||host($g(name,"%")))
 }
 ClassMethod GetI(name) As %Integer [ SqlName = HGETV, SqlProc ]
 {
    quit $get(^||host($g(name,"%")))
 }
 ClassMethod Declare(name, val) As %Integer [ SqlName = HDEC, SqlProc ]
 { 
    set ^||host($g(name,"%"))=$g(val)
    quit $$$OK
 }
 ClassMethod Del(name) As %Integer [ SqlName = HDEL, SqlProc ]
 {
    kill ^||host($g(name,"%"))
    quit $$$OK
 }
}
