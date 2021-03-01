BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 1

SELECT
	c_1."ParentID",
	c_1."ChildID",
	c_1."GrandChildID",
	a_Child."ParentID" as "ParentID_1",
	a_Child."ChildID" as "ChildID_1",
	a_Parent."ParentID" as "ParentID_2",
	a_Parent."Value1"
FROM
	"Child" t
		INNER JOIN "GrandChild" c_1
			LEFT JOIN "Child" a_Child ON c_1."ParentID" = a_Child."ParentID" AND c_1."ChildID" = a_Child."ChildID"
		ON t."ParentID" = c_1."ParentID" AND t."ChildID" = c_1."ChildID"
		LEFT JOIN "Parent" a_Parent ON a_Child."ParentID" = a_Parent."ParentID"
FETCH NEXT :take ROWS ONLY

