BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Assignee"
FROM
	"Child" "x"
		LEFT JOIN LATERAL (
			SELECT
				"a_GrandChildren"."ParentID" as "Assignee"
			FROM
				"GrandChild" "a_GrandChildren"
			WHERE
				"x"."ParentID" = "a_GrandChildren"."ParentID" AND
				"a_GrandChildren"."ParentID" IS NOT NULL AND
				"x"."ChildID" = "a_GrandChildren"."ChildID" AND
				"a_GrandChildren"."ChildID" IS NOT NULL
			LIMIT 1
		) "t1" ON 1=1
ORDER BY
	"t1"."Assignee"

