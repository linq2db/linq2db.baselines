-- Access.Ace.Odbc AccessODBC

SELECT
	[p].[ParentID],
	(
		SELECT
			COUNT(*)
		FROM
			[Child] [a_Children]
		WHERE
			[p].[ParentID] = [a_Children].[ParentID] AND [a_Children].[ChildID] <> 0
	)
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] <> 5

