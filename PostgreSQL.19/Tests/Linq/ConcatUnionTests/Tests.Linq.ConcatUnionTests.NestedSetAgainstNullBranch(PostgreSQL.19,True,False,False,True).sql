-- PostgreSQL.19 PostgreSQL12
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
	t2."ParentID_1",
	t2."ParentID_2",
	t2."ChildID"
FROM
	(
		SELECT
			t1."ParentID",
			c_1."ParentID" as "ParentID_1",
			c_1."ParentID" as "ParentID_2",
			c_1."ChildID"
		FROM
			"Parent" t1
				LEFT JOIN "Child" c_1 ON c_1."ParentID" = t1."ParentID"
		UNION ALL
		SELECT
			p_1."ParentID",
			NULL::Int as "ParentID_1",
			NULL::Int as "ParentID_2",
			NULL::Int as "ChildID"
		FROM
			"Parent" p_1
	) t2

-- PostgreSQL.19 PostgreSQL12
SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

-- PostgreSQL.19 PostgreSQL12
SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1

