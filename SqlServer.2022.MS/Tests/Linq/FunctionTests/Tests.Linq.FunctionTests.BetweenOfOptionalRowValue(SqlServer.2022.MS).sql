-- SqlServer.2022.MS SqlServer.2022
SELECT TOP (2)
	[c_1].[ChildID],
	IIF(Coalesce([c_1].[ChildID], 0) BETWEEN 0 AND 100, 1, 0),
	IIF(Coalesce([c_1].[ChildID], 0) NOT BETWEEN 0 AND 100, 1, 0),
	IIF([c_1].[ChildID] BETWEEN 0 AND 100, 1, 0)
FROM
	[Parent] [p]
		LEFT JOIN [Child] [c_1] ON [p].[ParentID] = [c_1].[ParentID]
WHERE
	[p].[ParentID] = 5

