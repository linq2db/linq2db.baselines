-- PostgreSQL.13 PostgreSQL

SELECT
	t1."ParentID",
	t1."Value1",
	c_2."ParentID",
	c_2."ChildID"
FROM
	"Parent" t1
		INNER JOIN (
			SELECT
				c_1."ParentID",
				c_1."ChildID"
			FROM
				"Child" c_1
			LIMIT 1
		) c_2 ON t1."ParentID" = c_2."ParentID"

