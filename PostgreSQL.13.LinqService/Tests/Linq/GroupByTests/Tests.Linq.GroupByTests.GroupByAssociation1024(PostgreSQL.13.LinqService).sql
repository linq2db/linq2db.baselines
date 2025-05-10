﻿BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	"a_Parent"."Value1"
FROM
	"GrandChild" g_1
		INNER JOIN "Parent" "a_Parent" ON g_1."ParentID" = "a_Parent"."ParentID"
GROUP BY
	"a_Parent"."ParentID",
	"a_Parent"."Value1"
HAVING
	COUNT(CASE
		WHEN g_1."ChildID" >= 20 AND g_1."ChildID" IS NOT NULL THEN 1
		ELSE NULL
	END) > 2 AND
	SUM(CASE
		WHEN g_1."ChildID" >= 19 AND g_1."ChildID" IS NOT NULL THEN g_1."ParentID"
		ELSE NULL
	END) > 0 AND
	MAX(CASE
		WHEN g_1."ChildID" >= 19 AND g_1."ChildID" IS NOT NULL THEN g_1."ParentID"
		ELSE NULL
	END) > 0 AND
	MAX(CASE
		WHEN g_1."ChildID" >= 18 AND g_1."ChildID" IS NOT NULL THEN g_1."ParentID"
		ELSE NULL
	END) > 0

