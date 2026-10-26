-- SqlServer.CS.MS SqlServer.2025
SELECT
	[p].[ParentID],
	IIF([p2].[ParentID] IS NOT NULL, [p2].[Value1], 5),
	IIF(IIF([p2].[ParentID] IS NOT NULL, [p2].[Value1], 5) IS NOT NULL, IIF([p2].[ParentID] IS NOT NULL, [p2].[Value1], 5), -1)
FROM
	[Parent] [p]
		LEFT JOIN [Parent] [p2] ON [p2].[ParentID] = [p].[ParentID] + 100

-- SqlServer.CS.MS SqlServer.2025
SELECT
	COUNT(*)
FROM
	[Parent] [t1]

