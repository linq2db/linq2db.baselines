-- SqlServer.Contained.MS SqlServer.2019
SELECT
	[p].[ParentID],
	(
		SELECT
			MAX(IIF([g_1].[ChildID] IS NOT NULL, [g_1].[GrandChildID], 0))
		FROM
			[GrandChild] [g_1]
		WHERE
			[g_1].[ParentID] = [p].[ParentID]
	)
FROM
	[Parent] [p]
ORDER BY
	[p].[ParentID]

-- SqlServer.Contained.MS SqlServer.2019
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

-- SqlServer.Contained.MS SqlServer.2019
SELECT
	[t1].[ParentID],
	[t1].[ChildID],
	[t1].[GrandChildID]
FROM
	[GrandChild] [t1]

