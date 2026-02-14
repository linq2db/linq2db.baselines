-- SqlServer.2022.MS SqlServer.2022

SELECT
	(
		SELECT
			COUNT(*) as [Count_1]
		FROM
			[GetParentByID]([p].[ParentID]) [t1]
	)
FROM
	[Parent] [p]

