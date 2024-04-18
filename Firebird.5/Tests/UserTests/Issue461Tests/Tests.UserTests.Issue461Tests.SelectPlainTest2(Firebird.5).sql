BeforeExecute
-- Firebird.5 Firebird4
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	"p"."ParentID",
	(
		SELECT
			"c_1"."ParentID" + 1
		FROM
			"Child" "c_1"
		FETCH NEXT @take ROWS ONLY
	)
FROM
	"Parent" "p"

