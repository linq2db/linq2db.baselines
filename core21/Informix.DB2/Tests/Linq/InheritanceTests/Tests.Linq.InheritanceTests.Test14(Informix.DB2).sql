BeforeExecute
-- Informix.DB2 Informix
DECLARE @id Integer(4) -- Int32
SET     @id = 10

SELECT FIRST 1 
	x.ChildID
FROM
	Child x
WHERE
	x.ChildID = @id

