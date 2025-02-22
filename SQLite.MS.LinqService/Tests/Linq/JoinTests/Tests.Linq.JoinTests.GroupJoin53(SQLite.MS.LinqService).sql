BeforeExecute
-- SQLite.MS SQLite

SELECT
	(
		SELECT
			[ch].[ParentID]
		FROM
			[Child] [ch]
		WHERE
			[p].[ParentID] = [ch].[ParentID]
		LIMIT 1
	)
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = 1

