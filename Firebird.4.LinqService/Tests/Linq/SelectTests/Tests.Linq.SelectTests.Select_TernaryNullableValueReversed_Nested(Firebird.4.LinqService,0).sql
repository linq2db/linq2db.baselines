BeforeExecute
-- Firebird.4 Firebird4
DECLARE @value Integer -- Int32
SET     @value = 0
DECLARE @p Integer -- Int32
SET     @p = 0

SELECT
	CAST(@value AS Int),
	CAST(@p AS Int)
FROM rdb$database

