BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	t1."ParentID" + 1
FROM
	"Parent" cp
		CROSS JOIN "Child" t1
WHERE
	t1."ParentID" > 0

