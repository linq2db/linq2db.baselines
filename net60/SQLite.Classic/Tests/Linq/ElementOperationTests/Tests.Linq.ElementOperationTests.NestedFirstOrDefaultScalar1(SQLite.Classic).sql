BeforeExecute
-- SQLite.Classic SQLite

SELECT
	(
		SELECT
			[p].[ChildID]
		FROM
			[Child] [p]
		LIMIT 1
	)
FROM
	[Parent] [p_1]

