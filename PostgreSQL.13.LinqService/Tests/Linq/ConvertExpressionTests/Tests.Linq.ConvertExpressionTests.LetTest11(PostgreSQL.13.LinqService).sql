﻿BeforeExecute
--  PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	CASE
		WHEN t1."ParentID" IS NULL THEN 0
		ELSE t1."ParentID"
	END,
	t2."ParentID",
	t2."ChildID"
FROM
	"Parent" p
		LEFT JOIN (
			SELECT
				c_1."ParentID"
			FROM
				"Child" c_1
			WHERE
				c_1."ParentID" > 0
			ORDER BY
				c_1."ParentID"
			LIMIT 1
		) t1 ON 1=1
		LEFT JOIN (
			SELECT
				c_2."ParentID",
				c_2."ChildID"
			FROM
				"Child" c_2
			WHERE
				c_2."ChildID" > -100
			ORDER BY
				c_2."ParentID"
			LIMIT 1
		) t2 ON 1=1
ORDER BY
	p."ParentID"

