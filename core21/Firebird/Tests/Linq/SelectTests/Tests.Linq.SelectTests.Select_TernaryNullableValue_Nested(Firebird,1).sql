BeforeExecute
-- Firebird
DECLARE @Value_3 Integer -- Int32
SET     @Value_3 = 1

SELECT
	Cast(@Value_3 as Int)
FROM rdb$database

