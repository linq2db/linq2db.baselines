-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."ParentID",
	t1."ParentID_1",
	t1."ParentID_1",
	t1."ChildID"
FROM
	(
		SELECT
			p."ParentID",
			p."ParentID" as "ParentID_1",
			p."ParentID" + 100 as "ChildID"
		FROM
			"Parent" p
		UNION ALL
		SELECT
			p_1."ParentID",
			NULL::Int as "ParentID_1",
			NULL::Int as "ChildID"
		FROM
			"Parent" p_1
	) t1
INTERSECT
SELECT
	p_2."ParentID",
	NULL::Int,
	NULL::Int,
	NULL::Int
FROM
	"Parent" p_2

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

