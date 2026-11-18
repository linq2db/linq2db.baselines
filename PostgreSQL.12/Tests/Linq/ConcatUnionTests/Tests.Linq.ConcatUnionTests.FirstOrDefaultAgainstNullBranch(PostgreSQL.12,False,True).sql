-- PostgreSQL.12 PostgreSQL12
SELECT
	p."ParentID",
	NULL::Int,
	NULL::Int,
	NULL::Int
FROM
	"Parent" p
UNION ALL
SELECT
	p_1."ParentID",
	t1."ParentID",
	t1."ParentID",
	t1."ChildID"
FROM
	"Parent" p_1
		LEFT JOIN LATERAL (
			SELECT
				c_1."ParentID",
				c_1."ChildID"
			FROM
				"Child" c_1
			WHERE
				c_1."ParentID" = p_1."ParentID"
			ORDER BY
				c_1."ChildID"
			LIMIT 1
		) t1 ON 1=1

-- PostgreSQL.12 PostgreSQL12
SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

-- PostgreSQL.12 PostgreSQL12
SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1

