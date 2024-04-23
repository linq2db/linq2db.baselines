BeforeExecute
-- Firebird.3 Firebird3
DECLARE @value Integer -- Int32
SET     @value = NULL
DECLARE @p Integer -- Int32
SET     @p = 0

SELECT
	CAST(@value AS Int),
	CASE
		WHEN 1 = 1 THEN CAST(@p AS Int)
		ELSE 4
	END
FROM rdb$database

