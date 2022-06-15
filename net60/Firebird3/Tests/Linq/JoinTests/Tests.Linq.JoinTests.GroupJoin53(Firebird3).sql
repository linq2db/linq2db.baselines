BeforeExecute
-- Firebird3 Firebird

SELECT
	(
		SELECT FIRST 1
			"ch"."ParentID"
		FROM
			"Child" "ch"
		WHERE
			"ch"."ParentID" = "p"."ParentID"
	)
FROM
	"Parent" "p"
WHERE
	"p"."ParentID" = 1

