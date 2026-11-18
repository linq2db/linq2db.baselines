-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @s1 NVarChar(7) -- String
SET     @s1 = '0 ' + chr(0) + ' '' 0'

SELECT
	CVar(@s1)

