-- Access.Jet.Odbc AccessODBC
SELECT
	[x].[ParentID]
FROM
	[Parent] [x]
WHERE
	IIF((
		SELECT
			MAX([a_Children].[ChildID])
		FROM
			[Child] [a_Children]
		WHERE
			[x].[ParentID] = [a_Children].[ParentID]
	) = 11, False, True)

