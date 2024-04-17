BeforeExecute
-- Firebird.4 Firebird4
DECLARE @Length Integer -- Int32
SET     @Length = 1

SELECT
	Cast(@Length as Int)
FROM rdb$database

