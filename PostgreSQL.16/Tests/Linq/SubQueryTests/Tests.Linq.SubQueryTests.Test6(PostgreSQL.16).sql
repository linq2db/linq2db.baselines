﻿BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @id Integer -- Int32
SET     @id = 2

SELECT
	c_1."ChildID",
	c_1."ParentID",
	(
		SELECT
			Sum(g_1."ChildID" * g_1."GrandChildID")
		FROM
			"GrandChild" g_1
		WHERE
			g_1."ChildID" = c_1."ChildID" AND g_1."GrandChildID" > 0
	),
	(
		SELECT
			Count(*)
		FROM
			"GrandChild" t1
		WHERE
			t1."ChildID" = c_1."ChildID" AND t1."GrandChildID" > 0
	)
FROM
	"Child" c_1
WHERE
	c_1."ParentID" = :id
ORDER BY
	c_1."ParentID" DESC

