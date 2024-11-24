BeforeExecute
-- Firebird.5 Firebird4
DECLARE @value Integer -- Int32
SET     @value = 0

SELECT
	CAST(@value AS Int)
FROM rdb$database

