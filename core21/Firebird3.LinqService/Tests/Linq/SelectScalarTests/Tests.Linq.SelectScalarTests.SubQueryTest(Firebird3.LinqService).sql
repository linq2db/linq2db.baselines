BeforeExecute
-- Firebird3 Firebird
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	(
		SELECT FIRST @take
			"p"."Value1"
		FROM
			"Parent" "p"
	)
FROM rdb$database

