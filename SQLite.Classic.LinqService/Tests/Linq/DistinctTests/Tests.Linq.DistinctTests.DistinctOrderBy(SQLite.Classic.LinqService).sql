BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

SELECT
	[t1].[ParentID]
FROM
	(
		SELECT DISTINCT
			[ch].[ParentID]
		FROM
			[Child] [ch]
	) [t1]
ORDER BY
	[t1].[ParentID]

