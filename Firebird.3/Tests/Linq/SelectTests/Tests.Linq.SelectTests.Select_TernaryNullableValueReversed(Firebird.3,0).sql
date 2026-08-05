-- Firebird.3 Firebird3
DECLARE @value Integer -- Int32
SET     @value = 0

SELECT
	CAST(@value AS Int)
FROM rdb$database

