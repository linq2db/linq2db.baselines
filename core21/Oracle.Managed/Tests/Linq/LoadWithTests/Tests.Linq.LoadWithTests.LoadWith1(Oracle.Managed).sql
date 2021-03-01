BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 1

SELECT
	t."ParentID",
	t."ChildID",
	a_Parent."ParentID" as "ParentID_1",
	a_Parent."Value1"
FROM
	"Child" t
		LEFT JOIN "Parent" a_Parent ON t."ParentID" = a_Parent."ParentID"
FETCH NEXT :take ROWS ONLY

