BeforeExecute
-- Informix.DB2 Informix
DECLARE @n Integer(4) -- Int32
SET     @n = 3

SELECT FIRST @n
	t1.ParentID,
	t1.ChildID
FROM
	Child t1

