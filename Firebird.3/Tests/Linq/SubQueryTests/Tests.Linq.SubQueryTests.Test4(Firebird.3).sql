BeforeExecute
-- Firebird.3 Firebird3
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	(
		SELECT
			"ch"."ChildID"
		FROM
			"Child" "ch"
		WHERE
			"ch"."ParentID" = "p"."ParentID" AND "ch"."ChildID" = "ch"."ParentID" * 10 + 1
		FETCH NEXT @take ROWS ONLY
	)
FROM
	"Parent" "p"
WHERE
	"p"."ParentID" <> 5

