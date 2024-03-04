BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[p].[ParentID],
	(
		SELECT
			Sum([a_Children].[ParentID])
		FROM
			[Child] [a_Children]
		WHERE
			[a_Children].[ParentID] > 0 AND [p].[ParentID] = [a_Children].[ParentID]
	) / 2
FROM
	[Parent] [p]
WHERE
	(
		SELECT
			Sum([a_Children].[ParentID])
		FROM
			[Child] [a_Children]
		WHERE
			[a_Children].[ParentID] > 0 AND [p].[ParentID] = [a_Children].[ParentID]
	) / 2 > 1

