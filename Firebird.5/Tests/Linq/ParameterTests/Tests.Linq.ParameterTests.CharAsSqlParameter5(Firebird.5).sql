BeforeExecute
-- Firebird.5 Firebird4
DECLARE @s1 Char -- String
SET     @s1 = _utf8 x'00'

SELECT
	CAST(@s1 AS CHAR(1))
FROM rdb$database

