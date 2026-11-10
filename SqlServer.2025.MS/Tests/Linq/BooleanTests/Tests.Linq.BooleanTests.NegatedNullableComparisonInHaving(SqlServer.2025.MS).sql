-- SqlServer.2025.MS SqlServer.2025
SELECT DISTINCT
	[g_1].[ParentID] % 3
FROM
	[Parent] [g_1]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[Parent] [x]
		WHERE
			[g_1].[ParentID] % 3 = [x].[ParentID] % 3 AND ([x].[Value1] <> 1 OR [x].[Value1] IS NULL)
	)

-- SqlServer.2025.MS SqlServer.2025
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

-- SqlServer.2025.MS SqlServer.2025
SELECT
	[g_2].[Key_1],
	COUNT(IIF([g_2].[c1] = 0, 1, NULL))
FROM
	(
		SELECT
			[g_1].[ParentID] % 2 as [Key_1],
			IIF([g_1].[Value1] = 1, 1, 0) as [c1]
		FROM
			[Parent] [g_1]
	) [g_2]
GROUP BY
	[g_2].[Key_1]
HAVING
	COUNT(IIF([g_2].[c1] = 0, 1, NULL)) > 1

-- SqlServer.2025.MS SqlServer.2025
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

