BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[Item1].[ParentID],
	[Item1].[ChildID]
FROM
	[Child] [Item1]
		LEFT JOIN [Parent] [_arg2] ON [Item1].[ParentID] = [_arg2].[ParentID]
WHERE
	[_arg2].[Value1] = 6
LIMIT 1

