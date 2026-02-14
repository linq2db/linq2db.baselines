-- SqlServer.2025

SELECT
	[p].[ParentID],
	(
		SELECT TOP (1)
			[c_1].[ParentID] + 1 as [V]
		FROM
			[Child] [c_1]
	)
FROM
	[Parent] [p]

