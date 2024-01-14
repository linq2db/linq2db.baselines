BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[c_1].[count_1]
FROM
	(
		SELECT
			Count(*) as [count_1]
		FROM
			[Child] [g_1]
		GROUP BY
			[g_1].[ParentID]
		HAVING
			Count(*) > 1
	) [c_1]
WHERE
	[c_1].[count_1] > 1

