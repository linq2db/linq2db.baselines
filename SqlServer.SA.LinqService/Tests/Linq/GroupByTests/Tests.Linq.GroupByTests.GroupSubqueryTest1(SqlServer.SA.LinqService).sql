BeforeExecute
-- SqlServer.SA SqlServer.2019 (asynchronously)

SELECT
	[pmp1].[ChildID]
FROM
	(
		SELECT
			[g_1].[ParentID]
		FROM
			[Child] [g_1]
		GROUP BY
			[g_1].[ParentID]
	) [pmp]
		CROSS JOIN [Child] [pmp1]

BeforeExecute
-- SqlServer.SA SqlServer.2019 (asynchronously)

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

