BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	p."ParentID"
FROM
	"Parent" p
		INNER JOIN "Child" a_Children ON p."ParentID" = a_Children."ParentID"

