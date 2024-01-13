BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[p].[ParentID],
	(
		SELECT
			Count(*)
		FROM
			[Child] [a_Children]
		WHERE
			[a_Children].[ParentID] = [p].[ParentID] AND Cast([a_Children].[ChildID] as Decimal) <> 0 AND
			[p].[ParentID] = [a_Children].[ParentID]
	)
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] <> 5

