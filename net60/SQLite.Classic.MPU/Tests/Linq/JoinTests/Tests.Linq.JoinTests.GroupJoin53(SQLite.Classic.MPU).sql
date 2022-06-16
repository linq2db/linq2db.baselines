BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	(
		SELECT
			[ch].[ParentID]
		FROM
			[Child] [ch]
		WHERE
			[ch].[ParentID] = [p].[ParentID]
		LIMIT 1
	)
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = 1

