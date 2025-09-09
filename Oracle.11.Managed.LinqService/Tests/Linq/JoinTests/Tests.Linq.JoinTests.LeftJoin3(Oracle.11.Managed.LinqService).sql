BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	a_Parent."ParentID",
	a_Parent."Value1"
FROM
	"Child" c_1
		LEFT JOIN "Parent" a_Parent ON c_1."ParentID" = a_Parent."ParentID"

