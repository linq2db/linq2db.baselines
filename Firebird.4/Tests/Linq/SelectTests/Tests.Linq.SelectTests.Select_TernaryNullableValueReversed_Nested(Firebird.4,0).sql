BeforeExecute
-- Firebird.4 Firebird4
DECLARE @p Integer -- Int32
SET     @p = 0

SELECT
	CAST(@p AS Int)
FROM rdb$database

