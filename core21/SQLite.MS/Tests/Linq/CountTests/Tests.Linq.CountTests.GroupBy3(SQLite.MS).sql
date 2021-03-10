BeforeExecute
-- SQLite.MS SQLite

SELECT
	[ch_1].[ParentID] + 1,
	Min([ch_1].[ChildID]),
	(
		SELECT
			Count(*)
		FROM
			[Child] [ch]
		WHERE
			[ch_1].[ParentID] + 1 = [ch].[ParentID] + 1 AND [ch].[ChildID] > 25 AND
			[ch].[ParentID] > 0
	)
FROM
	[Child] [ch_1]
WHERE
	[ch_1].[ParentID] > 0
GROUP BY
	[ch_1].[ParentID] + 1

