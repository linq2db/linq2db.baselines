BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	(
		SELECT
			Max([_].[ParentID])
		FROM
			[Child] [_]
		WHERE
			[p].[ParentID] = [_].[ParentID] AND [_].[ParentID] < 0
	)
FROM
	[Parent] [p]

