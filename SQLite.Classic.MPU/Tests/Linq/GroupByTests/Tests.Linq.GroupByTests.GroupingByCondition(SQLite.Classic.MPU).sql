-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[g_1].[isValueAvailable],
	[g_1].[ParentID],
	[g_1].[Value_1],
	COUNT(*)
FROM
	(
		SELECT
			[c_1].[ParentID],
			[c_1].[ChildID] % 2 = 0 as [isValueAvailable],
			NULL as [Value_1]
		FROM
			[Child] [c_1]
	) [g_1]
WHERE
	[g_1].[isValueAvailable]
GROUP BY
	[g_1].[isValueAvailable],
	[g_1].[ParentID],
	[g_1].[Value_1]

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

