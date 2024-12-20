BeforeExecute
-- Sybase.Managed Sybase
DECLARE @id Integer -- Int32
SET     @id = 1001

UPDATE
	[Child]
SET
	[ChildID] = [Child].[ChildID] + 1
FROM
	[Parent] [a_Parent]
WHERE
	[Child].[ChildID] = @id AND [a_Parent].[Value1] = 1 AND
	[Child].[ParentID] = [a_Parent].[ParentID]

