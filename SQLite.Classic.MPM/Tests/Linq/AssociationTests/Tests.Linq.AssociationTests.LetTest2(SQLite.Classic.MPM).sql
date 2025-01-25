BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[pp].[ParentID],
	(
		SELECT
			COUNT(*)
		FROM
			[Child] [a_Children]
		WHERE
			[pp].[ParentID] = [a_Children].[ParentID]
	)
FROM
	[Parent] [pp]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[pp].[ParentID],
	(
		SELECT
			COUNT(*)
		FROM
			[Child] [a_Children]
		WHERE
			[pp].[ParentID] = [a_Children].[ParentID]
	)
FROM
	[Parent] [pp]

