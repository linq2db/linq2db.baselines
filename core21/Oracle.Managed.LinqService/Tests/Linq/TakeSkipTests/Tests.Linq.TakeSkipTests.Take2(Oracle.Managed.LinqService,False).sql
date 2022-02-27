BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @n Int32
SET     @n = 1

SELECT
	ch.ParentID,
	ch.ChildID
FROM
	Child ch
FETCH NEXT :n ROWS ONLY

