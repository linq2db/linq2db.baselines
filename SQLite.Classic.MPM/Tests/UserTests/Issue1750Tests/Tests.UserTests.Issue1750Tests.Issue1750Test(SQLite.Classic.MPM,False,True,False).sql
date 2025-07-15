BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] IN (1, 2, 3, 4) AND [p].[Value1] = 2

