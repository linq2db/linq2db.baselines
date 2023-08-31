BeforeExecute
-- Firebird3 Firebird
DECLARE @value Integer -- Int32
SET     @value = 1
DECLARE @Value_1 Integer -- Int32
SET     @Value_1 = 1

SELECT
	CASE
		WHEN Cast(@value as Int) IS NOT NULL
			THEN CASE
			WHEN Cast(@Value_1 as Int) < 2
				THEN Cast(@Value_1 as Int)
			ELSE Cast(@Value_1 as Int) + 4
		END
		ELSE NULL
	END
FROM rdb$database

