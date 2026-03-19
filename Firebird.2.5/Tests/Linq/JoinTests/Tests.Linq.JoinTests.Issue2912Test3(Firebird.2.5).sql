-- Firebird.2.5 Firebird

SELECT
	(
		SELECT FIRST 1
			"a_Children"."ChildID"
		FROM
			"Child" "a_Children"
		WHERE
			"t1"."ParentID" = "a_Children"."ParentID"
	)
FROM
	"Parent" "t1"
		LEFT JOIN "GrandChild" "names_1" ON "t1"."ParentID" = "names_1"."ParentID"

