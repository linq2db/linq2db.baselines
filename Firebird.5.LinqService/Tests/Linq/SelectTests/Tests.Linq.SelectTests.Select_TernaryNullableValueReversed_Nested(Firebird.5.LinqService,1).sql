BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)
DECLARE @value Integer -- Int32
SET     @value = 1

SELECT
	CAST(@value AS Int)
FROM rdb$database

