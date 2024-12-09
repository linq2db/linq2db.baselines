BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @value Integer -- Int32
SET     @value = NULL

SELECT
	CAST(@value AS Int)
FROM rdb$database

