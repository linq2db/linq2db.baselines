BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12 (asynchronously)
DECLARE @n Int32
SET     @n = 1

SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1
FETCH NEXT :n ROWS ONLY

