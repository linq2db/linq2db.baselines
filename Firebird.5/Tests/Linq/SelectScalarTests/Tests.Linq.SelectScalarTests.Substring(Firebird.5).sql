BeforeExecute
-- Firebird.5 Firebird4
DECLARE @p Integer -- Int32
SET     @p = 2

SELECT
	Substring('123' from 2 for CAST(@p AS Int))
FROM rdb$database

