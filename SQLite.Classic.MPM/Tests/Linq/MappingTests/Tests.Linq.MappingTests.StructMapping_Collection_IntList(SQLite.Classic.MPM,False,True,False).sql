-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[Parent] [i]
WHERE
	(CAST([i].[Value1] AS INTEGER) IN (5, 3, 4) OR CAST([i].[Value1] AS INTEGER) IS NULL)

