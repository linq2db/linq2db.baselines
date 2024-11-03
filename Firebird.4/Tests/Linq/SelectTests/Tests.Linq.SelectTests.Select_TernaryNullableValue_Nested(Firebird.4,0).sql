BeforeExecute
-- Firebird.4 Firebird4
DECLARE @Value Integer -- Int32
SET     @Value = 0

SELECT
	CAST(@Value AS Int)
FROM rdb$database

