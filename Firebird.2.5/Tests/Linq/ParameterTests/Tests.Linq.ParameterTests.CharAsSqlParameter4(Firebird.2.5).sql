-- Firebird.2.5 Firebird
DECLARE @s1 VarChar(5) -- String
SET     @s1 = '--'

SELECT
	CAST(@s1 AS VARCHAR(5))
FROM rdb$database

