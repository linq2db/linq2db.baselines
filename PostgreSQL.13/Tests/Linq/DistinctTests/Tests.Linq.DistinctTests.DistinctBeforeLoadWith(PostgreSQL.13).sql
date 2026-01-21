-- PostgreSQL.13 PostgreSQL

SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	(
		SELECT DISTINCT
			c_1."ChildID",
			c_1."ParentID"
		FROM
			"Child" c_1
		WHERE
			c_1."ParentID" < 4
	) t1
ORDER BY
	t1."ChildID"

-- PostgreSQL.13 PostgreSQL

SELECT DISTINCT
	c_1."ParentID",
	c_1."ChildID"
FROM
	"Child" c_1
WHERE
	c_1."ParentID" < 4

