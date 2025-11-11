-- SQLite.MS SQLite

SELECT
	(
		SELECT
			[t1].[ParentID]
		FROM
			[Child] [t1]
		LIMIT 1
	),
	(
		SELECT
			[t2].[ChildID]
		FROM
			[Child] [t2]
		LIMIT 1
	)
FROM
	[Parent] [p]

