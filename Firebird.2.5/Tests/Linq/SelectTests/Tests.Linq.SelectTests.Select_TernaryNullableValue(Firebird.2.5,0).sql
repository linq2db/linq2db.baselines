BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @Value Integer -- Int32
SET     @Value = 0

SELECT
	CAST(@Value AS Int)
FROM rdb$database

