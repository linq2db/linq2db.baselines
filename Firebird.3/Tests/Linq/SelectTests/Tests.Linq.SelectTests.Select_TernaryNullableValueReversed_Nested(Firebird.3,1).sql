BeforeExecute
-- Firebird.3 Firebird3
DECLARE @value Integer -- Int32
SET     @value = 1
DECLARE @p Integer -- Int32
SET     @p = 1

SELECT
	CAST(@value AS Int),
	CAST(@p AS Int)
FROM rdb$database

