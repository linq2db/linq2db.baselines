BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @GrandChildID Integer(4) -- Int32
SET     @GrandChildID = 1000
DECLARE @ParentID Integer(4) -- Int32
SET     @ParentID = 10000

UPDATE
	GrandChild t1
SET
	GrandChildID = @GrandChildID
WHERE
	t1.ParentID = @ParentID AND t1.ChildID IS NULL

BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @GrandChildID Integer(4) -- Int32
SET     @GrandChildID = 1000
DECLARE @ParentID Integer(4) -- Int32
SET     @ParentID = 10000
DECLARE @ChildID Integer(4) -- Int32
SET     @ChildID = 111

UPDATE
	GrandChild t1
SET
	GrandChildID = @GrandChildID
WHERE
	t1.ParentID = @ParentID AND t1.ChildID = @ChildID

