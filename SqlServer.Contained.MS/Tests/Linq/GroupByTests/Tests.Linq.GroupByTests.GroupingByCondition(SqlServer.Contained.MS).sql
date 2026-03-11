-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[g_1].[isValueAvailable],
	[g_1].[ParentID],
	[g_1].[Value_1],
	COUNT(*)
FROM
	(
		SELECT
			[c_1].[ParentID],
			IIF([c_1].[ChildID] % 2 = 0, 1, 0) as [isValueAvailable],
			NULL as [Value_1]
		FROM
			[Child] [c_1]
	) [g_1]
WHERE
	[g_1].[isValueAvailable] = 1
GROUP BY
	[g_1].[isValueAvailable],
	[g_1].[ParentID],
	[g_1].[Value_1]

-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

