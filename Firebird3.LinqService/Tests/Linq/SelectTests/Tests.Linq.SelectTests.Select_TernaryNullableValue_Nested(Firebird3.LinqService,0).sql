BeforeExecute
-- Firebird3 Firebird
DECLARE @value Integer -- Int32
SET     @value = 0
DECLARE @p Integer -- Int32
SET     @p = 0

SELECT
	CAST(@value AS Int),
	CASE
		WHEN 1 = 1 THEN CAST(@p AS Int)
		ELSE 2
	END
FROM rdb$database

