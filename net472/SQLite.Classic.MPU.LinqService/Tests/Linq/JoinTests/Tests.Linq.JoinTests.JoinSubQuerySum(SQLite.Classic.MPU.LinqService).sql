BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[p].[ParentID],
	(
		SELECT
			Sum([c_1].[ChildID])
		FROM
			[Child] [c_1]
		WHERE
			[c_1].[ParentID] = [p].[ParentID] AND [c_1].[ChildID] <> [p].[ParentID] * 10 + 1
	)
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] > 0

