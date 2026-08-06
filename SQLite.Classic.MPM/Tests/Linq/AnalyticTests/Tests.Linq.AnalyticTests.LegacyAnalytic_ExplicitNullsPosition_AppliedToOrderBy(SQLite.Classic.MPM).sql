-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	SUM([p].[Value1]) OVER (ORDER BY [p].[Value1])
FROM
	[Parent] [p]

