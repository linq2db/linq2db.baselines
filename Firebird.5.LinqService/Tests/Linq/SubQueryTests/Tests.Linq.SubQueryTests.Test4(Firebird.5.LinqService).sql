BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

SELECT
	(
		SELECT
			"ch"."ChildID"
		FROM
			"Child" "ch"
		WHERE
			"ch"."ParentID" = "p"."ParentID" AND "ch"."ChildID" = "ch"."ParentID" * 10 + 1
		FETCH NEXT 1 ROWS ONLY
	)
FROM
	"Parent" "p"
WHERE
	"p"."ParentID" <> 5

