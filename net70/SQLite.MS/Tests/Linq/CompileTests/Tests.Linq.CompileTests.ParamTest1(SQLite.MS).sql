BeforeExecute
-- SQLite.MS SQLite
DECLARE @ParentID  -- Int32
SET     @ParentID = 2

SELECT
	[c_1].[ChildID]
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] = @ParentID

