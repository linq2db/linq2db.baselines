BeforeExecute
-- Firebird3 Firebird
DECLARE @Value_2 Integer -- Int32
SET     @Value_2 = 0

SELECT
	CASE
		WHEN Cast(NULL as Int) IS NOT NULL
			THEN Cast(@Value_2 as Int)
		ELSE NULL
	END
FROM rdb$database

