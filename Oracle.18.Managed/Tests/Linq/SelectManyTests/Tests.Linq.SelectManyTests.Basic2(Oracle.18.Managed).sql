BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	t1."ParentID" + 1
FROM
	"Parent" p
		CROSS JOIN "Child" t1

