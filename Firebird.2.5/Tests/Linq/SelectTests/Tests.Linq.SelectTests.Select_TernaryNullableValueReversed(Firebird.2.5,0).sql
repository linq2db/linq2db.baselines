-- Firebird.2.5 Firebird
DECLARE @value Integer -- Int32
SET     @value = 0

SELECT
	CAST(@value AS Int)
FROM rdb$database

