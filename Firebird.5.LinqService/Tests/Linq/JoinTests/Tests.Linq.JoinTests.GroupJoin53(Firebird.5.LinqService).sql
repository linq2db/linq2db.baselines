BeforeExecute
-- Firebird.5 Firebird4
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	"t1"."ParentID"
FROM
	"Parent" "p"
		LEFT JOIN LATERAL (
			SELECT
				"ch"."ParentID"
			FROM
				"Child" "ch"
			WHERE
				"ch"."ParentID" = "p"."ParentID"
			FETCH NEXT @take ROWS ONLY
		) "t1" ON 1=1
WHERE
	"p"."ParentID" = 1

