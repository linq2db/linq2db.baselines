-- Oracle.21.Managed Oracle.Managed Oracle12
SELECT
	p."ParentID",
	NULL,
	NULL,
	NULL
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
		OUTER APPLY (
			SELECT
				c_1."ParentID",
				c_1."ChildID"
			FROM
				"Child" c_1
			WHERE
				c_1."ParentID" = p_1."ParentID"
			ORDER BY
				c_1."ChildID"
			FETCH NEXT 1 ROWS ONLY
		) t1

-- Oracle.21.Managed Oracle.Managed Oracle12
SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

-- Oracle.21.Managed Oracle.Managed Oracle12
SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1

