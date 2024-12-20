BeforeExecute
-- SQLite.MS SQLite

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			[Child] [c_1]
		WHERE
			[c_1].[ChildID] > 1 AND [p].[ParentID] = [c_1].[ParentID]
	)
FROM
	[Parent] [p]

