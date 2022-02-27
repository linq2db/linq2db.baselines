BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

SELECT
	t1."ChildID"
FROM
	"Parent" p
		LEFT JOIN (
			SELECT
				c_1."ParentID" as c_1,
				c_1."ChildID"
			FROM
				"Child" c_1
			WHERE
				c_1."ParentID" = 1
		) t1 ON p."ParentID" = t1.c_1
GROUP BY
	t1."ChildID"

