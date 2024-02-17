BeforeExecute
-- SqlServer.2017

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
-- SqlServer.2017

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

