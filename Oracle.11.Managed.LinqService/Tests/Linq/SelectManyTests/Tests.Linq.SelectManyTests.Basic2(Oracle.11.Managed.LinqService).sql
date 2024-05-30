BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	t1."ParentID" + 1
FROM
	"Parent" p
		CROSS JOIN "Child" t1

