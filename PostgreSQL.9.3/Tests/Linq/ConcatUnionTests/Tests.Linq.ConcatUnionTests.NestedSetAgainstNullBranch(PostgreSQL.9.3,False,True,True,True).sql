-- PostgreSQL.9.3 PostgreSQL
SELECT
	p."ParentID",
	NULL::Int,
	NULL::Int,
	NULL::Int
FROM
	"Parent" p
UNION
SELECT
	t1."ParentID",
	t1."Child",
	t1."Child",
	t1."ChildID"
FROM
	(
		SELECT
			p_1."ParentID",
			NULL::Int as "Child",
			NULL::Int as "ChildID"
		FROM
			"Parent" p_1
		UNION
		SELECT
			p_2."ParentID",
			p_2."ParentID" as "Child",
			p_2."ParentID" + 100 as "ChildID"
		FROM
			"Parent" p_2
	) t1

-- PostgreSQL.9.3 PostgreSQL
SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

