-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	x_1."ParentID"
FROM
	(
		SELECT
			x."ParentID",
			NULL::Int as "Child"
		FROM
			"Parent" x
		UNION ALL
		SELECT
			t1."ParentID",
			c_1."ParentID" as "Child"
		FROM
			"Parent" t1
				LEFT JOIN "Child" c_1 ON c_1."ParentID" = t1."ParentID"
	) x_1
WHERE
	x_1."Child" IS NULL

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

