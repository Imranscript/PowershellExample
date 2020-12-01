#Example
#findrepeat [string]
#findrepeat findtherepeatcharacter
function findrepeat{
 
 Param([parameter(Mandatory=$true)][String]$string)
 
 $chars = @()
 #Turns string into an array
 $string.ToCharArray()  | %{
                            $chars += @($_)
                           }
#finds non repeated characters
$nonrepeatchar = $chars | select –unique

#compares non repeated characters with repeated characters, organizes it in an array, and then selects the first repeated object (character)
(Compare-object –referenceobject $nonrepeatchar –differenceobject $chars)[0].inputobject

}