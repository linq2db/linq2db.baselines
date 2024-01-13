BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[pp].[ParentID],
	(
		SELECT
			Count(*)
		FROM
			[Child] [a_Children]
		WHERE
			[pp].[ParentID] = [a_Children].[ParentID]
	)
FROM
	[Parent] [pp]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[pp].[ParentID],
	(
		SELECT
			Count(*)
		FROM
			[Child] [a_Children]
		WHERE
			[pp].[ParentID] = [a_Children].[ParentID]
	)
FROM
	[Parent] [pp]

