-- Firebird.5 Firebird4
DECLARE @value Integer -- Int32
SET     @value = 1

SELECT
	CAST(@value AS Int)
FROM rdb$database

