BeforeExecute
-- Firebird
DECLARE @p Integer -- Int32
SET     @p = 5

SELECT
	Cast(@p as Int)
FROM rdb$database

