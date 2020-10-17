BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	c_1."ParentID",
	c_1."ChildID",
	c_1."GrandChildID"
FROM
	"Child" cp
		INNER JOIN "Parent" a_Parent ON cp."ParentID" = a_Parent."ParentID"
		INNER JOIN "GrandChild" c_1 ON a_Parent."ParentID" = c_1."ParentID"

