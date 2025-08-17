BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)
DECLARE @s1 VarChar(7) -- String
SET     @s1 = _utf8 x'30200020272030'

SELECT
	CAST(@s1 AS VARCHAR(7))
FROM rdb$database

