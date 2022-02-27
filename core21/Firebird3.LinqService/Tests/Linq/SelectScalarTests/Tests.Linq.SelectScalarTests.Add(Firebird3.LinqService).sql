BeforeExecute
-- Firebird3 Firebird
DECLARE @p1 Integer -- Int32
SET     @p1 = 5

SELECT
	Cast(@p1 as Int)
FROM rdb$database

