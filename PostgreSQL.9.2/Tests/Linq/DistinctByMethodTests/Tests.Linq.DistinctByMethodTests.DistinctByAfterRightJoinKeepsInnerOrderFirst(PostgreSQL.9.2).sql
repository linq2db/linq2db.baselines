-- PostgreSQL.9.2 PostgreSQL
SELECT DISTINCT ON (p_1."Value1")
	p_1."ParentID",
	p_1."Value1",
	c_1."ChildID"
FROM
	(
		SELECT
			p."ParentID",
			p."Value1"
		FROM
			"Parent" p
	) p_1
		RIGHT JOIN "Child" c_1 ON p_1."ParentID" = c_1."ParentID"
ORDER BY
	p_1."Value1",
	c_1."ChildID",
	p_1."ParentID" DESC

-- PostgreSQL.9.2 PostgreSQL
SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

-- PostgreSQL.9.2 PostgreSQL
SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1

