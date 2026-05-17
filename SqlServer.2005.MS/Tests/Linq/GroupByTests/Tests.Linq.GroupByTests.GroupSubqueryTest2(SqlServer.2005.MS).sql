-- SqlServer.2005.MS SqlServer.2005

SELECT
	[pmp1].[ChildID]
FROM
	[Child] [pmp1]
		CROSS JOIN (
			SELECT DISTINCT
				[pmp].[ParentID]
			FROM
				[Child] [pmp]
		) [pmp_1]

-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

