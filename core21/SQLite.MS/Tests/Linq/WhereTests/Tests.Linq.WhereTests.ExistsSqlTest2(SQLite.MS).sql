BeforeExecute
-- SQLite.MS SQLite

DELETE FROM
	[Parent]
WHERE
	(EXISTS(
		SELECT
			*
		FROM
			[Child] [t1]
		WHERE
			[Parent].[ParentID] = [t1].[ParentID]
	))

