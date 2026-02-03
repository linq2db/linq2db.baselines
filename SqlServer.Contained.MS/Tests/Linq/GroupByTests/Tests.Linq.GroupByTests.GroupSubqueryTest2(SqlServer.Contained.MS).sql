-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[pmp1].[ChildID]
FROM
	[Child] [pmp1]
		CROSS JOIN (
			SELECT
				1 as [c1]
			FROM
				[Child] [pmp]
			GROUP BY
				[pmp].[ParentID]
		) [pmp_1]

-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

