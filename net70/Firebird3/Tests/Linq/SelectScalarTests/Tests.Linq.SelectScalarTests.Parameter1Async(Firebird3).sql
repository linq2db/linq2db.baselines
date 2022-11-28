BeforeExecute
-- Firebird3 Firebird (asynchronously)
DECLARE @p Integer -- Int32
SET     @p = 1

SELECT
	Cast(@p as Int)
FROM rdb$database

