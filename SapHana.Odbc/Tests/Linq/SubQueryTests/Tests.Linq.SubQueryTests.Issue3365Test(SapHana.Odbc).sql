-- SapHana.Odbc SapHanaOdbc

SELECT
	"t2"."Assignee"
FROM
	(
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
						"x"."ParentID" = "a_GrandChildren"."ParentID" AND "x"."ChildID" = "a_GrandChildren"."ChildID"
					LIMIT 1
				) "t1" ON 1=1
	) "t2"
ORDER BY
	"t2"."Assignee"

