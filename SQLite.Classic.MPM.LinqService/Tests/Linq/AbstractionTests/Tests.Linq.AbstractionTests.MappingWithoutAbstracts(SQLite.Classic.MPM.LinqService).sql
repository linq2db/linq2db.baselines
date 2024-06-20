BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[b].[ParentID],
	[impl].[ParentID],
	[impl].[Value1]
FROM
	[Parent] [b]
		INNER JOIN [Parent] [impl] ON [b].[ParentID] = [impl].[ParentID]
WHERE
	([b].[ParentID] = 2 OR [b].[ParentID] = 3)
ORDER BY
	[b].[ParentID]

