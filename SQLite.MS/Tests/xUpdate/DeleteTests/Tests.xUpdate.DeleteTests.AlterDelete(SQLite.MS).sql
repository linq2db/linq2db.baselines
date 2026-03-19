-- SQLite.MS SQLite

DELETE FROM
	[Parent]
WHERE
	EXISTS(
		SELECT
			1
		FROM
			[Parent] [t1]
				LEFT JOIN [Child] [ch] ON [t1].[ParentID] = [ch].[ParentID]
		WHERE
			([ch].[ParentID] = -1 OR [ch].[ParentID] IS NULL AND [t1].[ParentID] = -1) AND
			[Parent].[ParentID] = [t1].[ParentID] AND [Parent].[Value1] = [t1].[Value1]
	)

