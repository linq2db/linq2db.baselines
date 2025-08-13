BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 3

SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1
FETCH NEXT :take ROWS ONLY

