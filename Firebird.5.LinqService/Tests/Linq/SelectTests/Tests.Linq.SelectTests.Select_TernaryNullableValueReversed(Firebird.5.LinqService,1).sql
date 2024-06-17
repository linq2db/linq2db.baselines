BeforeExecute
-- Firebird.5 Firebird4
DECLARE @p Integer -- Int32
SET     @p = 1

SELECT
	CAST(@p AS Int)
FROM rdb$database

