-- Firebird.4 Firebird4

SELECT
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Parent" "p"
		LEFT JOIN LATERAL (
			SELECT DISTINCT
				"a_Children"."ParentID",
				"a_Children"."ChildID"
			FROM
				"Child" "a_Children"
			WHERE
				"p"."ParentID" = "a_Children"."ParentID" AND "a_Children"."ParentID" > 0
			ORDER BY
				"a_Children"."ChildID"
			FETCH NEXT 1 ROWS ONLY
		) "t1" ON 1=1

