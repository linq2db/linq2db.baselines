-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	p."ParentID",
	c_1."ChildID",
	c_1."ParentID"
FROM
	"Parent" p
		LEFT JOIN "Child" c_1 ON c_1."ParentID" = p."ParentID"

-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1

