﻿BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	(
		SELECT
			1 as "ChildId",
			2 as "ParentId"
		FROM
			"Child" g_1
	) g_2
GROUP BY
	g_2."ChildId",
	g_2."ParentId"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1

