BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	cp."ParentID"
FROM
	"Parent" cp
		INNER JOIN "Child" c_1 ON cp."ParentID" = c_1."ParentID"

