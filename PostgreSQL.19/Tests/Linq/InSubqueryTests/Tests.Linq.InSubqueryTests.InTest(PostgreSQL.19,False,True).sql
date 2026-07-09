-- PostgreSQL.19 PostgreSQL13

SELECT
	c_1."ParentID",
	c_1."ChildID"
FROM
	"Child" c_1
WHERE
	c_1."ParentID" IN (
		SELECT
			p."ParentID"
		FROM
			"Parent" p
	)

-- PostgreSQL.19 PostgreSQL13

SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1

-- PostgreSQL.19 PostgreSQL13

SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

