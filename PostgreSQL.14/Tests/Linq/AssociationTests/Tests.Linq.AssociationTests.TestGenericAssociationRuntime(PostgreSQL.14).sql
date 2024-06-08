﻿BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	"a_MiddleRuntime"."ParentID",
	"a_Bottom"."ParentID",
	"a_Bottom"."ChildID",
	"a_Bottom"."GrandChildID"
FROM
	"Parent" t
		LEFT JOIN "Child" "a_MiddleRuntime" ON t."ParentID" = "a_MiddleRuntime"."ParentID" AND "a_MiddleRuntime"."ChildID" > 1
		LEFT JOIN "Child" "a_MiddleRuntime_1" ON t."ParentID" = "a_MiddleRuntime_1"."ParentID" AND "a_MiddleRuntime_1"."ChildID" > 1
		LEFT JOIN "GrandChild" "a_Bottom" ON "a_MiddleRuntime_1"."ChildID" = "a_Bottom"."ChildID"
WHERE
	t."ParentID" IN (1, 5)
ORDER BY
	t."ParentID"

