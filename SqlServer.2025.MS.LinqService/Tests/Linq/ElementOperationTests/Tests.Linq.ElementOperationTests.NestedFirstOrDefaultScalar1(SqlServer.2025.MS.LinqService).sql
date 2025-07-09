BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	(
		SELECT TOP (1)
			[t1].[ChildID]
		FROM
			[Child] [t1]
	)
FROM
	[Parent] [p]

