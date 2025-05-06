This one is based on Corey Schafers tutorial: https://www.youtube.com/watch?v=sa-TUpSx1JA

What is regex?
- Regular expressions is a tool/language set that helps you search for different texts based on their textual contains and specialities, specific patterns of text.

Python library: re


**Test text:**
```
abcdefghijklmnopqurtuvwxyz
ABCDEFGHIJKLMNOPQRSTUVWXYZ
1234567890

Ha HaHa

cat
mat
par
bat

searching for anything else than bat here: [^b]at 


MetaCharacters (Need to be escaped): - meaning you always need a \ before them to be able to search for them
.[{()\^$|?*+

coreyms.com (searching for this is: coreyms\.com)

321-555-4321    -    \d\d\d.\d\d\d.\d\d\d\d    - more specific to match dash or dot \d\d\d[-.]\d\d\d[-.]\d\d\d\d
123.555.1234    -    \d{3}.\d{3}.\d{4} 
123*555*1234
800-555-4321
900-555-4321    -     [89]00[-.]\d\d\d[-.]\d\d\d\d

Mr. Schafer
Mr Smith
Ms Davis
Mrs. Robinson
Mr. T
- matching all prefixes of names: - Mr\.?\s[A-Z]
M(r|s|rs)\.?\s[A-Z]\w*




leventeblanar@gmail.com
levente.blanar@gmail.hu
levente_123-blanar@nje-uni.hu
[a-zA-Z0-9._-]+@[a-zA-Z-]+\.(com|hu)



https://www.google.com
http://coreyms.com
https://youtube.com
https://www.nasa.gov
version1: https?://(www\.)?\w+\.\w+
domain name: https?://(www\.)?(\w+)(\.\w+)
replace all: 
- Group 1: $1
- Group 2: $2
- Group 3: $3
```


important utils:
```
.       - Any character except new line
\d      - Digit (0-9)
\D      - Not a Digit (0-9)
\w      - Word Character (a-z, A-Z, 0-9, _)
\W      - Not a Word character
\s      - Whitespace (space, tab, newline)
\S      - Not Whitespace (space, tab, newline)

\b      - Word Boundary (like actual bounder like a space or enter)
\B      - Not a Word boundary
^       - Beginning of a String
$       - End of a String

[]      - Matches Characters in brackets
[^ ]    - Matches Characters NOT in brackets
|       - Either Or
( )     - Group

Quantifiers:
*       - 0 or More
+       - 1 or More
?       - 0 or One
{3}     - Exact Number
{3,4}   - Range of Numbers (Minimum, Maximum)
```


Basic expressions:
- [0-9] matching numbers
- [a-z] matching only non-capital letters
- [a-zA-Z] matching all letters