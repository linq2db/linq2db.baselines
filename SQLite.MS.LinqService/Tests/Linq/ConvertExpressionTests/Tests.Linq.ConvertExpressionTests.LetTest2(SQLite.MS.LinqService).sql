BeforeExecute
-- SQLite.MS SQLite (asynchronously)

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	(
		SELECT
			[a_Children].[ParentID]
		FROM
			[Child] [a_Children]
		WHERE
			[p].[ParentID] = [a_Children].[ParentID]
		LIMIT 1
	) IS NOT NULL

