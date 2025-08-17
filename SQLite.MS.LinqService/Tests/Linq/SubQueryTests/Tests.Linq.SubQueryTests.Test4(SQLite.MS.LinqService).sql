BeforeExecute
-- SQLite.MS SQLite (asynchronously)

SELECT
	(
		SELECT
			[ch].[ChildID]
		FROM
			[Child] [ch]
		WHERE
			[ch].[ParentID] = [p].[ParentID] AND [ch].[ChildID] = [ch].[ParentID] * 10 + 1
		LIMIT 1
	)
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] <> 5

