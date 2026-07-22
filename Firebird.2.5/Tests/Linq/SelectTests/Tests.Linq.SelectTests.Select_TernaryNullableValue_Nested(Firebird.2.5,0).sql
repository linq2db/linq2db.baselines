-- Firebird.2.5 Firebird
DECLARE @value Integer -- Int32
SET     @value = 0

SELECT
	CASE
		WHEN CAST(@value AS Int) < 2 THEN CAST(@value AS Int)
		ELSE 2 + CAST(@value AS Int)
	END
FROM rdb$database

