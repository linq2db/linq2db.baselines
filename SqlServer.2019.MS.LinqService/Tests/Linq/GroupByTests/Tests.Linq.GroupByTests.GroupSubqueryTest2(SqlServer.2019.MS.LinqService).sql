BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT
	[pmp1].[ChildID]
FROM
	[Child] [pmp1]
		CROSS JOIN (
			SELECT
				[pmp].[ParentID]
			FROM
				[Child] [pmp]
			GROUP BY
				[pmp].[ParentID]
		) [pmp_1]

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

