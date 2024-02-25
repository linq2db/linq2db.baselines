BeforeExecute
-- SqlServer.2022.MS SqlServer.2022
DECLARE @take Int -- Int32
SET     @take = 10

SELECT
	[p_1].[ParentID],
	[t1].[ChildID]
FROM
	(
		SELECT TOP (@take)
			[p].[ParentID]
		FROM
			[Parent] [p]
		WHERE
			[p].[ParentID] > 0
	) [p_1],
	(
		SELECT TOP (@take)
			[c_1].[ChildID]
		FROM
			[Child] [c_1]
	) [t1]

