BeforeExecute
-- Firebird.3 Firebird3

SELECT
	(
		SELECT
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

