BeforeExecute
-- SqlServer.2005
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
		INNER JOIN [Child] [r] ON [p_1].[ParentID] = [r].[ParentID]

