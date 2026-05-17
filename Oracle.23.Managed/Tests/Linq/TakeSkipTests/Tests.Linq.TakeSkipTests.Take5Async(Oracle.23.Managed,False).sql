-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1
FETCH NEXT 3 ROWS ONLY

