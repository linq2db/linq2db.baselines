BeforeExecute
-- Firebird3 Firebird
DECLARE @Length_1 Integer -- Int32
SET     @Length_1 = 1

SELECT
	Cast(@Length_1 as Int)
FROM rdb$database

