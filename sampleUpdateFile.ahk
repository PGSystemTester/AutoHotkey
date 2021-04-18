/*Script is triggered with CTL J (once activated.
Used for making entries to a group of users 
via keystrokes.
sleep function used to ensure no collision issues with entries
*/

^j::
;Sample Script to do a repeated set of keystrokes through a function.
;Example of updating user information
zMyEntry("BILLY")
zMyEntry("SALLY")
zMyEntry("LARRY")
zMyEntry("BOB")
return


zMyEntry(zTheName)
{
Send, %zTheName%{Tab}
;Sleep used to ensure machine has time to make entries.
sleep, 1200
Send, {Space}{rshift down}{tab}{rshift up}{Backspace}
sleep, 500
return
}
