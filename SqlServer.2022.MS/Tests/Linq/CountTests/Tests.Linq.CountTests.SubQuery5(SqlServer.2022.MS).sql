-- SqlServer.2022.MS SqlServer.2022

SELECT
	(
		SELECT
			COUNT(*) as [Count_1]
		FROM
			[Parent] [p1]
		WHERE
			[p1].[ParentID] = [p].[ParentID]
	)
FROM
	[Parent] [p]

