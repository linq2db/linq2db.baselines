BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @value Integer -- Int32
SET     @value = 1

SELECT
	CAST(@value AS Int)
FROM rdb$database

