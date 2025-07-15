BeforeExecute
-- Firebird.5 Firebird4

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			"Child" "a_Children"
		WHERE
			"p"."ParentID" = "a_Children"."ParentID"
	)
FROM
	"Parent" "p"

