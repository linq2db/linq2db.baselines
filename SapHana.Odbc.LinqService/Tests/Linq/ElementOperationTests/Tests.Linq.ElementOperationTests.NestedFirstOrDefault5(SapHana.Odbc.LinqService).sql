﻿BeforeExecute
--  SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"GrandChild" "p"
		LEFT JOIN "Child" "a_Child" ON "p"."ParentID" = "a_Child"."ParentID" AND "p"."ChildID" = "a_Child"."ChildID"
		LEFT JOIN "Parent" "a_Parent" ON "a_Child"."ParentID" = "a_Parent"."ParentID"
		LEFT JOIN LATERAL (
			SELECT
				"a_Children"."ParentID",
				"a_Children"."ChildID"
			FROM
				"Child" "a_Children"
			WHERE
				"a_Parent"."ParentID" = "a_Children"."ParentID"
			ORDER BY
				"a_Children"."ChildID"
			LIMIT 1
		) "t1" ON 1=1
WHERE
	"p"."ChildID" > 0

