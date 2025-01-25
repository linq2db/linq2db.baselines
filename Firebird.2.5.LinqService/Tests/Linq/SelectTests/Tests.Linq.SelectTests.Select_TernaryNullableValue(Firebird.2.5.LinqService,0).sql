BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @value Integer -- Int32
SET     @value = 0
DECLARE @value_1 Integer -- Int32
SET     @value_1 = 0

SELECT
	CAST(@value AS Int),
	CAST(@value_1 AS Int)
FROM rdb$database

