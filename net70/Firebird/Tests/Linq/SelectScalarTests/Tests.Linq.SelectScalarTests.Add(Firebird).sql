BeforeExecute
-- Firebird
DECLARE @p_1 Integer -- Int32
SET     @p_1 = 5

SELECT
	Cast(@p_1 as Int)
FROM rdb$database

