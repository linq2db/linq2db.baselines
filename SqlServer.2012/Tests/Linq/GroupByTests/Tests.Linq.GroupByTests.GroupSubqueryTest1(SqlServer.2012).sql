-- SqlServer.2012

SELECT
	[pmp1].[ChildID]
FROM
	(
		SELECT DISTINCT
			[g_1].[ParentID]
		FROM
			[Child] [g_1]
	) [pmp]
		CROSS JOIN [Child] [pmp1]

-- SqlServer.2012

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

