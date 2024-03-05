BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[p].[ParentID],
	(
		SELECT
			Count(*)
		FROM
			[Child] [a_Children]
		WHERE
			[a_Children].[ParentID] = [p].[ParentID] AND [a_Children].[ChildID] <> 0 AND
			[p].[ParentID] = [a_Children].[ParentID]
	)
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] <> 5

