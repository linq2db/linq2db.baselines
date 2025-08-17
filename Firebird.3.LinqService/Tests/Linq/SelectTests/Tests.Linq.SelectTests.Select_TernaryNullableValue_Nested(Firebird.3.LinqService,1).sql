BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)
DECLARE @value Integer -- Int32
SET     @value = 1

SELECT
	CAST(@value AS Int)
FROM rdb$database

