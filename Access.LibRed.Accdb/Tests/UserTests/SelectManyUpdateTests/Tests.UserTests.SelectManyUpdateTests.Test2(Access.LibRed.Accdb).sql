-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @ChildID  -- Int32
SET     @ChildID = 10

UPDATE
	(
		SELECT
			[x].[ParentID],
			[a_Children].[ChildID]
		FROM
			[Child] [a_Children],
			[Parent] [x]
	) [cross_1]
		INNER JOIN [Child] [a_Children_1] ON ([cross_1].[ParentID] = [a_Children_1].[ParentID])
SET
	[cross_1].[ChildID] = @ChildID
WHERE
	1 = 0

