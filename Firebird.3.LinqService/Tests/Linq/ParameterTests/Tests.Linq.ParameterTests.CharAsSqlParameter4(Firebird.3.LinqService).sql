BeforeExecute
-- Firebird.3 Firebird3
DECLARE @s1 VarChar(5) -- String
SET     @s1 = '--'

SELECT
	CAST(@s1 AS VARCHAR(5))
FROM rdb$database

