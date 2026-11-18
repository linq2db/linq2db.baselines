-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @s1 NVarChar(7) -- String
SET     @s1 = chr(0) + ' ' + chr(0) + ' '' ' + chr(0)

SELECT
	CVar(@s1)

