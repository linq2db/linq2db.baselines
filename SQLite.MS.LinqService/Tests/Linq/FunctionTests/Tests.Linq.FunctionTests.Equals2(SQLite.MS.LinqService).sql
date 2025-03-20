BeforeExecute
-- SQLite.MS SQLite
DECLARE @child_ParentID  -- Int32
SET     @child_ParentID = 2
DECLARE @child_ChildID  -- Int32
SET     @child_ChildID = 21

SELECT
	[ch].[ParentID],
	[ch].[ChildID]
FROM
	[Child] [ch]
WHERE
	NOT ([ch].[ParentID] = @child_ParentID AND [ch].[ChildID] = @child_ChildID)

