BeforeExecute
-- Firebird.3 Firebird3
DECLARE @value Integer -- Int32
SET     @value = NULL
DECLARE @p Integer -- Int32
SET     @p = 0

SELECT
	CAST(@value AS Int),
	CAST(@p AS Int)
FROM rdb$database

