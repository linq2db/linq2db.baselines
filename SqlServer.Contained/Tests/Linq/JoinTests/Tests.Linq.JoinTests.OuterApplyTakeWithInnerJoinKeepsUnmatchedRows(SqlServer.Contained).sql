-- SqlServer.Contained SqlServer.2025
SELECT
	[c_1].[ChildID],
	[x_1].[ParentID]
FROM
	[Child] [c_1]
		OUTER APPLY (
			SELECT
				[p].[ParentID]
			FROM
				(
					SELECT TOP (1)
						[g_1].[ParentID]
					FROM
						[GrandChild] [g_1]
					WHERE
						[g_1].[ChildID] = [c_1].[ChildID]
					ORDER BY
						[g_1].[GrandChildID]
				) [x]
					INNER JOIN [Parent] [p] ON [x].[ParentID] = [p].[ParentID]
		) [x_1]

-- SqlServer.Contained SqlServer.2025
SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

-- SqlServer.Contained SqlServer.2025
SELECT
	[t1].[ParentID],
	[t1].[ChildID],
	[t1].[GrandChildID]
FROM
	[GrandChild] [t1]

-- SqlServer.Contained SqlServer.2025
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

