BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	Count(*)
FROM
	"Parent" p
		LEFT JOIN "Child" o ON p."ParentID" = o."ParentID"

