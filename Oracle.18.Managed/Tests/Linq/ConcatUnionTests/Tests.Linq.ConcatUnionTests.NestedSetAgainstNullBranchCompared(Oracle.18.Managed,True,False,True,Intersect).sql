-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	t2."ParentID",
	t2."Child",
	t2."ParentID_1",
	t2."ChildID"
FROM
	(
		SELECT
			p."ParentID",
			NULL as "Child",
			NULL as "ParentID_1",
			NULL as "ChildID"
		FROM
			"Parent" p
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
INTERSECT
SELECT
	p_1."ParentID",
	NULL,
	NULL,
	NULL
FROM
	"Parent" p_1

-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1

