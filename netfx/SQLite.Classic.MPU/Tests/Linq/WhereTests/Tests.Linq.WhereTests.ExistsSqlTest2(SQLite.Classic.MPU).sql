BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DELETE FROM
	[Parent]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[Child] [a_Children]
		WHERE
			[Parent].[ParentID] = [a_Children].[ParentID]
	) AND
	[Parent].[ParentID] > 100

