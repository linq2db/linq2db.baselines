BeforeExecute
-- Informix.DB2 Informix

SELECT 
	t1.ParentID, 
	t1.ChildID
FROM
	GrandChild t1
GROUP BY
	t1.ParentID,
	t1.ChildID

BeforeExecute
-- Informix.DB2 Informix
DECLARE @ParentID Integer(4) -- Int32
SET     @ParentID = 1
DECLARE @ChildID Integer(4) -- Int32
SET     @ChildID = 11

SELECT 
	ch.GrandChildID
FROM
	GrandChild ch
WHERE
	(ch.ParentID = @ParentID AND ch.ChildID = @ChildID)

