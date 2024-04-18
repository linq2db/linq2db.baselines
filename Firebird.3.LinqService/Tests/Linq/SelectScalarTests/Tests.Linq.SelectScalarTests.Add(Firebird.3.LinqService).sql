BeforeExecute
-- Firebird.3 Firebird3
DECLARE @p Integer -- Int32
SET     @p = 5

SELECT
	Cast(@p as Int)
FROM rdb$database

