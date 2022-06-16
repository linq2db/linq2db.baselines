BeforeExecute
-- Firebird3 Firebird
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	(
		SELECT FIRST @take
			"ch"."ChildID"
		FROM
			"Child" "ch"
		WHERE
			"ch"."ParentID" = "p"."ParentID" AND "ch"."ChildID" = "ch"."ParentID" * 10 + 1
	)
FROM
	"Parent" "p"
WHERE
	"p"."ParentID" <> 5

