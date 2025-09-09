BeforeExecute
-- SQLite.MS SQLite (asynchronously)

SELECT
	[p].[ParentID],
	EXISTS(
		SELECT
			*
		FROM
			[Child] [c_1]
		WHERE
			[p].[ParentID] = [c_1].[ParentID]
	)
FROM
	[Parent] [p]

