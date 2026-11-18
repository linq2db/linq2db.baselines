-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT
	p."ParentID",
	NULL::Int,
	NULL::Int,
	NULL::Int
FROM
	"Parent" p
UNION
SELECT
	t2."ParentID",
	t2."Child",
	t2."ParentID_1",
	t2."ChildID"
FROM
	(
		SELECT
			p_1."ParentID",
			NULL::Int as "Child",
			NULL::Int as "ParentID_1",
			NULL::Int as "ChildID"
		FROM
			"Parent" p_1
		UNION ALL
		SELECT
			t1."ParentID",
			c_1."ParentID" as "Child",
			c_1."ParentID" as "ParentID_1",
			c_1."ChildID"
		FROM
			"Parent" t1
				LEFT JOIN "Child" c_1 ON c_1."ParentID" = t1."ParentID"
	) t2

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1

