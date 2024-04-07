BeforeExecute
-- Firebird3 Firebird
DECLARE @value Integer -- Int32
SET     @value = NULL
DECLARE @Value_1 Integer -- Int32
SET     @Value_1 = 0

SELECT
	CASE
		WHEN Cast(@value as Int) IS NULL
			THEN NULL
		WHEN Cast(@Value_1 as Int) < 2
			THEN Cast(@Value_1 as Int)
		ELSE 2 + Cast(@Value_1 as Int)
	END
FROM rdb$database

