BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t."ParentID",
	t."ChildID",
	a_Parent."ParentID" as "ParentID_1",
	a_Parent."Value1"
FROM
	"Child" t
		LEFT JOIN "Parent" a_Parent ON t."ParentID" = a_Parent."ParentID"
FETCH NEXT 1 ROWS ONLY

