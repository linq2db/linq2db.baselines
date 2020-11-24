BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	cp."ParentID"
FROM
	"Parent" cp
		INNER JOIN "Child" c_1 ON cp."ParentID" = c_1."ParentID"

