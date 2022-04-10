BeforeExecute
-- Informix.DB2 Informix
DECLARE @ParentID Integer(4) -- Int32
SET     @ParentID = 2
DECLARE @ChildID Integer(4) -- Int32
SET     @ChildID = 21

SELECT
	ch.ParentID,
	ch.ChildID
FROM
	Child ch
WHERE
	ch.ParentID = @ParentID AND ch.ChildID = @ChildID

