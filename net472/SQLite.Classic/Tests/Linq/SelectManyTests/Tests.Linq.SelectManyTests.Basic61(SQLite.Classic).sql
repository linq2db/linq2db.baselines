BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[_].[ParentID] + 1
FROM
	[Parent] [cp]
		INNER JOIN [Child] [_] ON ([_].[ParentID] + 1 > 1 OR [_].[ParentID] + 1 > 2) AND [cp].[ParentID] = [_].[ParentID]
WHERE
	([_].[ParentID] + 1 > 0 OR [_].[ParentID] + 1 > 3)

