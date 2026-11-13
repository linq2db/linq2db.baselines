-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[t1].[Key_1]
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY [e].[Key_1] % 2 ORDER BY [e].[Key_1] DESC) as [RowNumber],
			[e].[Key_1]
		FROM
			(
				SELECT DISTINCT
					[g_1].[ParentID] % 3 as [Key_1]
				FROM
					[Parent] [g_1]
			) [e]
	) [t1]
WHERE
	[t1].[RowNumber] = 1
ORDER BY
	[t1].[Key_1] DESC

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

