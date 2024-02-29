BeforeExecute
-- SqlServer.2022.MS SqlServer.2022
DECLARE @take Int -- Int32
SET     @take = 10

SELECT
	[p_1].[ParentID],
	[r].[ChildID]
FROM
	(
		SELECT TOP (@take)
			[p].[ParentID]
		FROM
			[Parent] [p]
		WHERE
			[p].[ParentID] > 0
	) [p_1]
		RIGHT JOIN [Child] [r] ON [p_1].[ParentID] = [r].[ParentID]

