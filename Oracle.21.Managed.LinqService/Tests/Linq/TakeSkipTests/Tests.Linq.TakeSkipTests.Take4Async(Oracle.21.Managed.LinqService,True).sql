BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12 (asynchronously)
DECLARE @take Int32
SET     @take = 3

SELECT
	ch."ParentID",
	ch."ChildID"
FROM
	"Child" ch
WHERE
	ch."ChildID" >= 0 AND ch."ChildID" <= 100
FETCH NEXT :take ROWS ONLY

