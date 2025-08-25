BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)
DECLARE @value Integer -- Int32
SET     @value = NULL

SELECT
	CAST(@value AS Int)
FROM rdb$database

