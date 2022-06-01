BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 1

SELECT
	c_1."ParentID",
	c_1."ChildID",
	c_1."GrandChildID",
	a_Child."ParentID",
	a_Child."ChildID",
	a_Parent."ParentID",
	a_Parent."Value1"
FROM
	"Child" t
		INNER JOIN "GrandChild" c_1
			LEFT JOIN "Child" a_Child ON c_1."ParentID" = a_Child."ParentID" AND c_1."ChildID" = a_Child."ChildID"
		ON t."ParentID" = c_1."ParentID" AND t."ChildID" = c_1."ChildID"
		LEFT JOIN "Parent" a_Parent ON a_Child."ParentID" = a_Parent."ParentID"
FETCH NEXT :take ROWS ONLY

