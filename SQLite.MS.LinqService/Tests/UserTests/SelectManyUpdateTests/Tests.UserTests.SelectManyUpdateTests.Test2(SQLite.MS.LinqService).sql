BeforeExecute
-- SQLite.MS SQLite (asynchronously)
DECLARE @ChildID  -- Int32
SET     @ChildID = 10

UPDATE
	[Child]
SET
	[ChildID] = @ChildID
FROM
	[Parent] [x]
		INNER JOIN [Child] [a_Children] ON [x].[ParentID] = [a_Children].[ParentID]
WHERE
	1 = 0

