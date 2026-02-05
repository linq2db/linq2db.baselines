-- Firebird.2.5 Firebird

SELECT
	(
		SELECT FIRST 1 DISTINCT
			"a_Children"."ParentID"
		FROM
			"Child" "a_Children"
		WHERE
			"p"."ParentID" = "a_Children"."ParentID" AND "a_Children"."ParentID" > 0
		ORDER BY
			"a_Children"."ChildID"
	),
	(
		SELECT FIRST 1 DISTINCT
			"a_Children_1"."ChildID"
		FROM
			"Child" "a_Children_1"
		WHERE
			"p"."ParentID" = "a_Children_1"."ParentID" AND "a_Children_1"."ParentID" > 0
		ORDER BY
			"a_Children_1"."ChildID"
	)
FROM
	"Parent" "p"

