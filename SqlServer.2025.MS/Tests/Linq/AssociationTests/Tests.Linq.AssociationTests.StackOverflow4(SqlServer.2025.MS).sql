-- SqlServer.2025.MS SqlServer.2025

SELECT
	(
		SELECT
			COUNT(*) as [Count_1]
		FROM
			[Parent] [a_Children]
		WHERE
			[p].[ParentID] = [a_Children].[Value1]
	)
FROM
	[Parent] [p]

