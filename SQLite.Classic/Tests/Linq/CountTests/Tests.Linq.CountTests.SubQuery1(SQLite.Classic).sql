BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[p].[ParentID],
	(
		SELECT
			COUNT(*)
		FROM
			[Child] [a_Children]
		WHERE
			[a_Children].[ParentID] = [p].[ParentID] AND CAST([a_Children].[ChildID] AS Decimal) <> 0 AND
			[p].[ParentID] = [a_Children].[ParentID]
	)
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] <> 5

