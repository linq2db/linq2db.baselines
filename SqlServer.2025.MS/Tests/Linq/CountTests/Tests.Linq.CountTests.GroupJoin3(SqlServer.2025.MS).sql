-- SqlServer.2025.MS SqlServer.2025

SELECT
	(
		SELECT
			COUNT(*) as [Count1]
		FROM
			[Child] [c_1]
		WHERE
			[t1].[ParentID] = [c_1].[ParentID]
	)
FROM
	[Parent] [t1]

