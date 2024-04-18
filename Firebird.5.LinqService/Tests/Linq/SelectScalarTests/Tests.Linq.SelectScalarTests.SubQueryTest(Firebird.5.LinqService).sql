BeforeExecute
-- Firebird.5 Firebird4
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	(
		SELECT
			"p"."Value1"
		FROM
			"Parent" "p"
		FETCH NEXT @take ROWS ONLY
	)
FROM rdb$database

