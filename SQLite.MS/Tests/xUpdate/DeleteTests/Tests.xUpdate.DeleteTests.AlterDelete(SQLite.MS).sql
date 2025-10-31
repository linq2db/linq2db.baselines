-- SQLite.MS SQLite

DELETE FROM
	[Parent]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[Parent] [p]
				LEFT JOIN [Child] [ch] ON [p].[ParentID] = [ch].[ParentID]
		WHERE
			([ch].[ParentID] = -1 OR [ch].[ParentID] IS NULL AND [p].[ParentID] = -1) AND
			[Parent].[ParentID] = [p].[ParentID] AND [Parent].[Value1] = [p].[Value1]
	)

