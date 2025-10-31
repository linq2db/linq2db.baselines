BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			[Child] [a_Children]
		WHERE
			[p].[ParentID] = [a_Children].[ParentID] AND [a_Children].[ChildID] > 0
	)
FROM
	[Parent] [p]

