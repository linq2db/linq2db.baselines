-- SQLite.MS SQLite
SELECT
	[g_2].[Key_1],
	(
		SELECT
			COUNT(*)
		FROM
			(
				SELECT DISTINCT
					[c_1].[ChildID]
				FROM
					[Child] [c_1]
				WHERE
					[g_2].[Key_1] = [c_1].[ParentID]
			) [t1]
	)
FROM
	(
		SELECT DISTINCT
			[g_1].[ParentID] as [Key_1]
		FROM
			[Child] [g_1]
	) [g_2]
ORDER BY
	[g_2].[Key_1]

-- SQLite.MS SQLite
SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

