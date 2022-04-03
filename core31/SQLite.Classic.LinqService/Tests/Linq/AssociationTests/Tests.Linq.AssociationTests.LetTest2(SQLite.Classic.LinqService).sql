BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t].[ParentID],
	(
		SELECT
			Count(*)
		FROM
			[Child] [t1]
		WHERE
			[t].[ParentID] = [t1].[ParentID]
	)
FROM
	[Parent] [t]

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t].[ParentID],
	(
		SELECT
			Count(*)
		FROM
			[Child] [t1]
		WHERE
			[t].[ParentID] = [t1].[ParentID]
	)
FROM
	[Parent] [t]

