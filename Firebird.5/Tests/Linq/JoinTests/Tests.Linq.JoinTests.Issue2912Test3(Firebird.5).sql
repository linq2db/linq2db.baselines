-- Firebird.5 Firebird4

SELECT
	CASE
		WHEN "t1"."ParentID" IS NOT NULL THEN "t1"."ChildID"
		ELSE 0
	END
FROM
	"Parent" "t2"
		LEFT JOIN LATERAL (
			SELECT
				"a_Children"."ParentID",
				"a_Children"."ChildID"
			FROM
				"Child" "a_Children"
			WHERE
				"t2"."ParentID" = "a_Children"."ParentID"
			FETCH NEXT 1 ROWS ONLY
		) "t1" ON 1=1
		LEFT JOIN "GrandChild" "names_1" ON "t2"."ParentID" = "names_1"."ParentID"

