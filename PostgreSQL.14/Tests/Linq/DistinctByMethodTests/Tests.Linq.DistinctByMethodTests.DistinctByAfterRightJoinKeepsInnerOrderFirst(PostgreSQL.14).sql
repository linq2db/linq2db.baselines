-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	t1."ParentID",
	t1."Value1",
	t1."ChildID"
FROM
	(
		SELECT DISTINCT ON (p_1."Value1")
			c_1."ChildID",
			p_1."ParentID",
			p_1."Value1"
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
	) t1
ORDER BY
	t1."ChildID",
	t1."ParentID" DESC

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1

