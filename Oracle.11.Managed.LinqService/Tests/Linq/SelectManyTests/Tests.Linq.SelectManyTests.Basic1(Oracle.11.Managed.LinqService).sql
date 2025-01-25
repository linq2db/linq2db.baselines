BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Parent" p
		CROSS JOIN "Child" t1

