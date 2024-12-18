﻿BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	c_3."ParentID",
	c_3."ChildID"
FROM
	(
		SELECT
			c_1."ParentID",
			NULL::Int as "ChildID"
		FROM
			"Child" c_1
		WHERE
			c_1."ParentID" = 1
		UNION ALL
		SELECT
			NULL::Int as "ParentID",
			c_2."ChildID" + 1000 as "ChildID"
		FROM
			"Child" c_2
		WHERE
			c_2."ParentID" = 3
	) c_3
WHERE
	c_3."ParentID" = 1 AND c_3."ParentID" IS NOT NULL

