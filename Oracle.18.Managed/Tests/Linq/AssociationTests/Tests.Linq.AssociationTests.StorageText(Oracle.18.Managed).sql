-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	t1."ParentID",
	t1."ChildID",
	a_Parent."ParentID" as "ParentID_1",
	a_Parent."Value1"
FROM
	"Child" t1
		INNER JOIN "Parent" a_Parent ON t1."ParentID" = a_Parent."ParentID"
FETCH NEXT 1 ROWS ONLY

