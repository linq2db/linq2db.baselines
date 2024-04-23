BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @value Integer -- Int32
SET     @value = 1
DECLARE @p Integer -- Int32
SET     @p = 1

SELECT
	CAST(@value AS Int),
	CASE
		WHEN 1 = 1 THEN CAST(@p AS Int)
		ELSE 3
	END
FROM rdb$database

