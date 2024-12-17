﻿BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	CASE
		WHEN  EXISTS (
			SELECT
				*
			FROM
				"Child" c_3
			WHERE
				c_3."ParentID" = p."ParentID" AND c_3."ChildID" > -100
		)
			THEN True
		ELSE False
	END,
	(
		SELECT
			COUNT(*)
		FROM
			"Child" c_4
		WHERE
			c_4."ParentID" = p."ParentID" AND c_4."ChildID" > -100
	),
	t1."ParentID",
	t1."ChildID",
	t2."ParentID",
	t2."ChildID"
FROM
	"Parent" p
		LEFT JOIN LATERAL (
			SELECT
				c_1."ParentID",
				c_1."ChildID"
			FROM
				"Child" c_1
			WHERE
				c_1."ParentID" = p."ParentID" AND c_1."ChildID" > -100 AND
				c_1."ParentID" > 0
			ORDER BY
				c_1."ChildID"
			LIMIT 1
		) t1 ON 1=1
		LEFT JOIN LATERAL (
			SELECT
				c_2."ParentID",
				c_2."ChildID"
			FROM
				"Child" c_2
			WHERE
				c_2."ParentID" = p."ParentID" AND c_2."ChildID" > -100
			ORDER BY
				c_2."ChildID"
			LIMIT 1
		) t2 ON 1=1

