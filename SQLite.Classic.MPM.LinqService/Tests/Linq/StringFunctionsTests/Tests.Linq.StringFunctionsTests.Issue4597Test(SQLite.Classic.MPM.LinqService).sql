BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite (asynchronously)

SELECT
	(
		SELECT
			GROUP_CONCAT(CAST([a_Children].[ChildID] AS NVarChar(11)), ', ')
		FROM
			[Child] [a_Children]
		WHERE
			[s].[ParentID] = [a_Children].[ParentID]
	)
FROM
	[Parent] [s]

