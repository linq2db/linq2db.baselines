BeforeExecute
-- Firebird.5 Firebird4
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	(
		SELECT
			"p"."ChildID"
		FROM
			"Child" "p"
		FETCH NEXT @take ROWS ONLY
	)
FROM
	"Parent" "p_1"

