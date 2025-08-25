BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)
DECLARE @p Integer -- Int32
SET     @p = 5

SELECT
	CAST(@p AS Int)
FROM rdb$database

