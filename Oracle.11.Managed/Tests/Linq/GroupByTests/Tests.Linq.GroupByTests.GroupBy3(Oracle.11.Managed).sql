-- Oracle.11.Managed Oracle11

SELECT DISTINCT
	Nvl(gr."Value1", c_1."ChildID")
FROM
	"Parent" gr
		INNER JOIN "Child" c_1 ON gr."ParentID" = c_1."ParentID"

