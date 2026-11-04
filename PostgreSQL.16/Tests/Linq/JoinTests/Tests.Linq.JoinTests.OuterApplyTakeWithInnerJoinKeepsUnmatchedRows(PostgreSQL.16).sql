-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
SELECT
	c_1."ChildID",
	x_1."ParentID"
FROM
	"Child" c_1
		LEFT JOIN LATERAL (
			SELECT
				p."ParentID"
			FROM
				(
					SELECT
						g_1."ParentID"
					FROM
						"GrandChild" g_1
					WHERE
						g_1."ChildID" = c_1."ChildID"
					ORDER BY
						g_1."GrandChildID"
					LIMIT 1
				) x
					INNER JOIN "Parent" p ON x."ParentID" = p."ParentID"
		) x_1 ON 1=1

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
SELECT
	t1."ParentID",
	t1."ChildID",
	t1."GrandChildID"
FROM
	"GrandChild" t1

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

