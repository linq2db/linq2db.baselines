-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT DISTINCT
	Coalesce([p].[Value1], [p].[ParentID] % 2)
FROM
	[Parent] [p]

