BeforeExecute
-- Firebird.3 Firebird3
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	(
		SELECT
			"p"."ParentID"
		FROM
			"Child" "p"
		FETCH NEXT @take ROWS ONLY
	)
FROM
	"Parent" "p_1"

