BeforeExecute
-- Firebird3 Firebird
DECLARE @value Integer -- Int32
SET     @value = 1
DECLARE @Value_1 Integer -- Int32
SET     @Value_1 = 1

SELECT
	CASE
		WHEN Cast(@value as Int) IS NULL
			THEN NULL
		ELSE Cast(@Value_1 as Int)
	END
FROM rdb$database

