-- SqlServer.2005.MS SqlServer.2005
SELECT
	[x_1].[ParentID],
	[x_1].[Index_1]
FROM
	(
		SELECT
			ROW_NUMBER() OVER (ORDER BY [x].[ParentID] DESC) - 1 as [Index_1],
			[x].[ParentID]
		FROM
			[Parent] [x]
	) [x_1]
WHERE
	[x_1].[Index_1] >= 0
ORDER BY
	[x_1].[ParentID] DESC

-- SqlServer.2005.MS SqlServer.2005
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

-- SqlServer.2005.MS SqlServer.2005
SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

