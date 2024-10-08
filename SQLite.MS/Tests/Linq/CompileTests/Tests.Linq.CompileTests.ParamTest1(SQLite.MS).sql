BeforeExecute
-- SQLite.MS SQLite
DECLARE @ParentID  -- Int32
SET     @ParentID = 2
DECLARE @ParentID_1  -- Int32
SET     @ParentID_1 = 2

SELECT
	@ParentID,
	[c_1].[ChildID]
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] = @ParentID_1

