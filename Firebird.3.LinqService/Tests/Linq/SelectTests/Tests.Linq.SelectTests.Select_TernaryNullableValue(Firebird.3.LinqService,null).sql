BeforeExecute
-- Firebird.3 Firebird3
DECLARE @value Integer -- Int32
SET     @value = NULL

SELECT
	CAST(@value AS Int)
FROM rdb$database

