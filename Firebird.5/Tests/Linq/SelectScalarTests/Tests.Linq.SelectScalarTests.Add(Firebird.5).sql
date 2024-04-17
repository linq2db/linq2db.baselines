BeforeExecute
-- Firebird.5 Firebird4
DECLARE @p Integer -- Int32
SET     @p = 5

SELECT
	Cast(@p as Int)
FROM rdb$database

