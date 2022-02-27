BeforeExecute
-- Firebird3 Firebird
DECLARE @Value_2 Integer -- Int32
SET     @Value_2 = 0

SELECT
	CASE
		WHEN Cast(NULL as Int) IS NULL
			THEN NULL
		ELSE Cast(@Value_2 as Int)
	END
FROM rdb$database

