BeforeExecute
-- Firebird.3 Firebird3
DECLARE @s1 VarChar(1) -- String
SET     @s1 = _utf8 x'00'

SELECT
	CAST(@s1 AS VARCHAR(1))
FROM rdb$database

