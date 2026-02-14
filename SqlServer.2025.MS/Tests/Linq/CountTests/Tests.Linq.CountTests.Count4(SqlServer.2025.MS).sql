-- SqlServer.2025.MS SqlServer.2025

SELECT
	(
		SELECT
			COUNT(*) as [Count_1]
		FROM
			[Child] [t1]
	)
FROM
	[Parent] [p]

