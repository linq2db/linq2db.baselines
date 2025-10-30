-- Oracle.11.Managed Oracle11

SELECT
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
		INNER JOIN "Child" a_Children ON p."ParentID" = a_Children."ParentID"

