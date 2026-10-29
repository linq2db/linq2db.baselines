-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	t2."ParentID",
	t2."Value1",
	t2."ChildID"
FROM
	(
		SELECT DISTINCT ON (p."Value1")
			p."ParentID",
			c_1."ChildID",
			p."Value1"
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
	) t2
ORDER BY
	t2."ParentID" DESC,
	t2."ChildID"

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1

