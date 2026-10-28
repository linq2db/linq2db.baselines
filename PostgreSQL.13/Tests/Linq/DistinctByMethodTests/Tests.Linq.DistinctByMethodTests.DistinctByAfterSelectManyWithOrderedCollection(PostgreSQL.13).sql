-- PostgreSQL.13 PostgreSQL12
SELECT DISTINCT ON (p."Value1")
	p."ParentID",
	p."Value1",
	c_1."ChildID"
FROM
	(
		SELECT
			t1."ParentID",
			t1."Value1"
		FROM
			"Parent" t1
	) p
		INNER JOIN "Child" c_1 ON c_1."ParentID" = p."ParentID"
ORDER BY
	p."Value1",
	p."ParentID" DESC,
	c_1."ChildID"

-- PostgreSQL.13 PostgreSQL12
SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

-- PostgreSQL.13 PostgreSQL12
SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1

