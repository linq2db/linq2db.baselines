BeforeExecute
-- Informix.DB2 Informix
DECLARE @n Integer(4) -- Int32
SET     @n = 3

SELECT SKIP @n
	t1.ParentID,
	t1.ChildID
FROM
	Child t1
ORDER BY
	t1.ChildID

