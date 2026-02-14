-- SqlServer.2025.MS SqlServer.2025

SELECT
	(
		SELECT TOP (1)
			[l].[ParentID] + 1 as [Id]
		FROM
			[Child] [l]
	)
FROM
	[Parent] [sep]

