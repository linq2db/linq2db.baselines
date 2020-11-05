BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[ChildID],
	[t1].[ParentID]
FROM
	(
		SELECT
			[ch].[ChildID],
			[ch].[ParentID]
		FROM
			[Child] [ch]
	) [t1]

