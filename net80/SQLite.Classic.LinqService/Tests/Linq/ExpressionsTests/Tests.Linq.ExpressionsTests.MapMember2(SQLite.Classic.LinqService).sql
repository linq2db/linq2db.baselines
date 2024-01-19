BeforeExecute
-- SQLite.Classic SQLite

SELECT
	(
		SELECT
			Count(*)
		FROM
			[Child] [a_Children]
		WHERE
			[a_Children].[ChildID] > 1 AND [p].[ParentID] = [a_Children].[ParentID]
	)
FROM
	[Parent] [p]

