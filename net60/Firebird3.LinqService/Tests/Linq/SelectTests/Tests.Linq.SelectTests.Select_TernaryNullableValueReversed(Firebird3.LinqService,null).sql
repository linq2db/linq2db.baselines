BeforeExecute
-- Firebird3 Firebird
DECLARE @value_1 Integer -- Int32
SET     @value_1 = NULL
DECLARE @value_2 Integer -- Int32
SET     @value_2 = 0

SELECT
	CASE
		WHEN Cast(@value_1 as Int) IS NOT NULL
			THEN Cast(@value_2 as Int)
		ELSE NULL
	END
FROM rdb$database

