-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[Parent] [i]
WHERE
	([i].[Value1] IN (5, 3, 4) OR [i].[Value1] IS NULL)

