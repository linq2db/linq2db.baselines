-- Firebird.2.5 Firebird

SELECT
	CASE
		WHEN (
			SELECT FIRST 1
				"a_Children"."ParentID"
			FROM
				"Child" "a_Children"
			WHERE
				"employee"."ParentID" = "a_Children"."ParentID"
		) IS NOT NULL
			THEN (
			SELECT FIRST 1
				"a_Children_1"."ChildID"
			FROM
				"Child" "a_Children_1"
			WHERE
				"employee"."ParentID" = "a_Children_1"."ParentID"
		)
		ELSE 0
	END
FROM
	"Parent" "employee"

