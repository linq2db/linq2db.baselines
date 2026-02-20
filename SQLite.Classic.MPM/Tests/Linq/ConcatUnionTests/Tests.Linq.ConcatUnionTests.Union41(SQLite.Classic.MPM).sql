-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[p].[ParentID],
	CAST(1 AS BitBoolean)
FROM
	[Parent] [p]
UNION
SELECT
	[ch].[ParentID],
	CAST(0 AS BitBoolean)
FROM
	[Child] [ch]

