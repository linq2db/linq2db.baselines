BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)
DECLARE @p Integer -- Int32
SET     @p = 5

SELECT
	CAST(@p AS Int)
FROM rdb$database

