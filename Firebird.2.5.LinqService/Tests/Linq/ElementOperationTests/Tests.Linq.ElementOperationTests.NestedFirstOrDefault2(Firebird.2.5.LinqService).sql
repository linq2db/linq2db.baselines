BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

SELECT
	(
		SELECT FIRST 1
			"a_Children"."ParentID"
		FROM
			"Child" "a_Children"
		WHERE
			"p"."ParentID" = "a_Children"."ParentID"
		ORDER BY
			"a_Children"."ChildID"
	),
	(
		SELECT FIRST 1
			"a_Children_1"."ChildID"
		FROM
			"Child" "a_Children_1"
		WHERE
			"p"."ParentID" = "a_Children_1"."ParentID"
		ORDER BY
			"a_Children_1"."ChildID"
	)
FROM
	"Parent" "p"

