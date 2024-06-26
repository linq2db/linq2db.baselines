BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @p Integer -- Int32
SET     @p = 0

SELECT
	CAST(@p AS Int)
FROM rdb$database

