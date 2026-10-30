-- SqlServer.Contained SqlServer.2025
SELECT
	[p].[ParentID],
	(
		SELECT
			COUNT(*)
		FROM
			(
				SELECT DISTINCT
					[g_1].[ChildID]
				FROM
					[GrandChild] [g_1]
				WHERE
					[g_1].[ParentID] = [p].[ParentID]
			) [t1]
	),
	(
		SELECT
			COUNT(*)
		FROM
			(
				SELECT DISTINCT
					[g_2].[ChildID],
					[g_2].[GrandChildID]
				FROM
					[GrandChild] [g_2]
				WHERE
					[g_2].[ParentID] = [p].[ParentID]
			) [t2]
	)
FROM
	[Parent] [p]
ORDER BY
	[p].[ParentID]

-- SqlServer.Contained SqlServer.2025
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

-- SqlServer.Contained SqlServer.2025
SELECT
	[t1].[ParentID],
	[t1].[ChildID],
	[t1].[GrandChildID]
FROM
	[GrandChild] [t1]

