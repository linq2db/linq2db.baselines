BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	a_Parent."ParentID",
	a_Parent."Value1"
FROM
	"Child" t1
		LEFT JOIN "Parent" a_Parent ON t1."ParentID" = a_Parent."ParentID"

