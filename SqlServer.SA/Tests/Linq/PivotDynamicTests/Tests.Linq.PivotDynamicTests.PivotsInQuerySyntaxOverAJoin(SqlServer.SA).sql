-- SqlServer.SA SqlServer.2019
SELECT
	[g_1].[ParentID],
	SUM(IIF([c_1].[ChildID] = 21, [c_1].[ChildID], NULL)),
	SUM(IIF([c_1].[ChildID] = 22, [c_1].[ChildID], NULL)),
	SUM(IIF([c_1].[ChildID] = 31, [c_1].[ChildID], NULL)),
	SUM(IIF([c_1].[ChildID] = 32, [c_1].[ChildID], NULL)),
	SUM(IIF([c_1].[ChildID] = 33, [c_1].[ChildID], NULL))
FROM
	[Parent] [g_1]
		INNER JOIN [Child] [c_1] ON [g_1].[ParentID] = [c_1].[ParentID]
WHERE
	[g_1].[ParentID] = 2 OR [g_1].[ParentID] = 3
GROUP BY
	[g_1].[ParentID]

