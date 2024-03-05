BeforeExecute
-- SQLite.MS SQLite

SELECT
	(
		SELECT
			Count(*)
		FROM
			[Child] [c_1]
		WHERE
			[t1].[ParentID] = [c_1].[ParentID]
	) + (
		SELECT
			Count(*)
		FROM
			[Child] [c_1]
		WHERE
			[t1].[ParentID] = [c_1].[ParentID]
	)
FROM
	[Parent] [t1]

