BeforeExecute
-- Firebird3 Firebird
DECLARE @Value_2 Integer -- Int32
SET     @Value_2 = 1

SELECT
	Cast(@Value_2 as Int)
FROM rdb$database

