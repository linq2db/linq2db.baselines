BeforeExecute
-- Firebird3 Firebird
DECLARE @value_1 Integer -- Int32
SET     @value_1 = 1
DECLARE @Value_2 Integer -- Int32
SET     @Value_2 = 1

SELECT
	CASE
		WHEN Cast(@value_1 as Int) IS NULL
			THEN NULL
		ELSE Cast(@Value_2 as Int)
	END
FROM rdb$database

