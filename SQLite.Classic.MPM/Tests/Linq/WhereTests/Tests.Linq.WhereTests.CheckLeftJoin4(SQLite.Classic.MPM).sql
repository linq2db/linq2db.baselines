-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]
		LEFT JOIN [Child] [ch] ON [t1].[ParentID] = [ch].[ParentID] AND [ch].[ParentID] > 0
WHERE
	[ch].[ParentID] IS NULL

