﻿BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	"a_Middle"."ParentID",
	"a_Bottom"."ParentID",
	"a_Bottom"."ChildID",
	"a_Bottom"."GrandChildID"
FROM
	"Parent" t
		LEFT JOIN "Child" "a_Middle" ON t."ParentID" = "a_Middle"."ParentID"
		LEFT JOIN "Child" "a_Middle_1" ON t."ParentID" = "a_Middle_1"."ParentID"
		LEFT JOIN "GrandChild" "a_Bottom" ON "a_Middle_1"."ChildID" = "a_Bottom"."ChildID"
WHERE
	t."ParentID" IN (1, 5)
ORDER BY
	t."ParentID"

