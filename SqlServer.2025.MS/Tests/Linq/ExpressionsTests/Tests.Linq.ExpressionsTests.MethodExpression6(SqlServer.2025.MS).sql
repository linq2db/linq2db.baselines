-- SqlServer.2025.MS SqlServer.2025

SELECT
	(
		SELECT
			COUNT(*) as [Count6]
		FROM
			[Child] [c_1]
		WHERE
			[c_1].[ParentID] = [p].[ParentID]
	)
FROM
	[Parent] [p]

