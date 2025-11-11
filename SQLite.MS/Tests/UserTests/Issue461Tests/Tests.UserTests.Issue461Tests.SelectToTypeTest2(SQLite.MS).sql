-- SQLite.MS SQLite

SELECT
	(
		SELECT
			[l].[ParentID] + 1
		FROM
			[Child] [l]
		LIMIT 1
	),
	(
		SELECT
			[l_1].[ParentID]
		FROM
			[Child] [l_1]
		LIMIT 1
	)
FROM
	[Parent] [sep]

