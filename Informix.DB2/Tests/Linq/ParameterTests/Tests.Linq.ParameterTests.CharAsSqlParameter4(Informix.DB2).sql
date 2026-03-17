-- Informix.DB2 Informix
DECLARE @s1 VarChar(5) -- String
SET     @s1 = '--'

SELECT
	@s1::NVarChar(5)
FROM table(set{1})

