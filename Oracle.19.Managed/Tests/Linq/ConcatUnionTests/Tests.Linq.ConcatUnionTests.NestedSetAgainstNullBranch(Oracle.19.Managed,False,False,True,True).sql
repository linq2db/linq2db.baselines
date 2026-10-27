-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	p."ParentID",
	NULL,
	NULL,
	NULL
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
			NULL as "Child",
			NULL as "ChildID"
		FROM
			"Parent" p_1
		UNION ALL
		SELECT
			p_2."ParentID",
			p_2."ParentID" as "Child",
			p_2."ParentID" + 100 as "ChildID"
		FROM
			"Parent" p_2
	) t1

-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

