BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[pmp1].[ChildID]
FROM
	[Child] [pmp1]
		CROSS JOIN (
			SELECT
				[g_1].[ParentID]
			FROM
				[Child] [g_1]
			GROUP BY
				[g_1].[ParentID]
		) [pmp]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

