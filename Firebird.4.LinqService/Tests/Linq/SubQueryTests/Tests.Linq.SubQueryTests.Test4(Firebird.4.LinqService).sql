BeforeExecute
-- Firebird.4 Firebird4
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	"t1"."ChildID"
FROM
	"Parent" "p"
		LEFT JOIN LATERAL (
			SELECT
				"ch"."ChildID"
			FROM
				"Child" "ch"
			WHERE
				"ch"."ParentID" = "p"."ParentID" AND "ch"."ChildID" = "ch"."ParentID" * 10 + 1
			FETCH NEXT @take ROWS ONLY
		) "t1" ON 1=1
WHERE
	"p"."ParentID" <> 5

