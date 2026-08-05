-- Firebird.5 Firebird4
DECLARE @s1 VarChar(7) -- String
SET     @s1 = _utf8 x'00200020272000'

SELECT
	CAST(@s1 AS VARCHAR(7))
FROM rdb$database

