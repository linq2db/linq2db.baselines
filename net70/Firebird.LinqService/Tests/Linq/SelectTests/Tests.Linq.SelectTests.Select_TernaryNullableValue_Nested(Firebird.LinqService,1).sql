BeforeExecute
-- Firebird
DECLARE @value Integer -- Int32
SET     @value = 1
DECLARE @Value_1 Integer -- Int32
SET     @Value_1 = 1
DECLARE @Value_2 Integer -- Int32
SET     @Value_2 = 1
DECLARE @Value_3 Integer -- Int32
SET     @Value_3 = 1

SELECT
	CASE
		WHEN Cast(@value as Int) IS NULL
			THEN NULL
		WHEN Cast(@Value_1 as Int) < 2
			THEN Cast(@Value_2 as Int)
		ELSE 2 + Cast(@Value_3 as Int)
	END
FROM rdb$database

