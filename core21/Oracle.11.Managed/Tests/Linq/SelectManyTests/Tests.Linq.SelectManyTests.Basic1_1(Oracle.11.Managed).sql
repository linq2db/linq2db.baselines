BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	c_1."ParentID",
	c_1."ChildID",
	c_1."GrandChildID"
FROM
	"Parent" cp_1
		CROSS JOIN "Child" cp
		CROSS JOIN "GrandChild" c_1

