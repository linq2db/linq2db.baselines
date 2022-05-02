BeforeExecute
-- Firebird4 Firebird
DECLARE @value_1 Integer -- Int32
SET     @value_1 = 0
DECLARE @value_2 Integer -- Int32
SET     @value_2 = 0

SELECT
	CASE
		WHEN Cast(@value_1 as Int) IS NULL
			THEN NULL
		ELSE Cast(@value_2 as Int)
	END
FROM rdb$database

