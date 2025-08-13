BeforeExecute
-- SqlServer.2025 SqlServer.2022

SELECT
	[t1].[ParentID] + 1
FROM
	[Parent] [p]
		CROSS JOIN [Child] [t1]

