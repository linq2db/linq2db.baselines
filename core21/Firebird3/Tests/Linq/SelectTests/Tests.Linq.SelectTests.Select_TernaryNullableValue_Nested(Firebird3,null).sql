BeforeExecute
-- Firebird3 Firebird
DECLARE @value_1 Integer -- Int32
SET     @value_1 = NULL
DECLARE @Value_2 Integer -- Int32
SET     @Value_2 = 0
DECLARE @Value_3 Integer -- Int32
SET     @Value_3 = 0
DECLARE @Value_4 Integer -- Int32
SET     @Value_4 = 0

SELECT
	CASE
		WHEN Cast(@value_1 as Int) IS NULL
			THEN NULL
		WHEN Cast(@Value_2 as Int) < 2
			THEN Cast(@Value_3 as Int)
		ELSE 2 + Cast(@Value_4 as Int)
	END
FROM rdb$database

