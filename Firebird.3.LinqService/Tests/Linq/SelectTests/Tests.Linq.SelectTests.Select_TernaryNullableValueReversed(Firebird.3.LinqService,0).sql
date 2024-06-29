BeforeExecute
-- Firebird.3 Firebird3
DECLARE @p Integer -- Int32
SET     @p = 0

SELECT
	CAST(@p AS Int)
FROM rdb$database

