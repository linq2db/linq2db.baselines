-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	o."ParentID",
	o."Value1",
	c_2."ParentID",
	c_2."ChildID"
FROM
	"Parent" o
		LEFT JOIN (
			SELECT
				c_1."ParentID",
				c_1."ChildID"
			FROM
				"Child" c_1
			LIMIT 1
		) c_2 ON o."ParentID" = c_2."ParentID"
ORDER BY
	c_2."ChildID" DESC

