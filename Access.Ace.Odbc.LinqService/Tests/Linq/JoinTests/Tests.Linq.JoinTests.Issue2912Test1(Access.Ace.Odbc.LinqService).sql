BeforeExecute
-- Access.Ace.Odbc AccessODBC (asynchronously)

SELECT
	IIF((
		SELECT TOP 1
			[a_Children].[ParentID]
		FROM
			[Child] [a_Children]
		WHERE
			[employee].[ParentID] = [a_Children].[ParentID]
	) IS NOT NULL, (
		SELECT TOP 1
			[a_Children_1].[ChildID]
		FROM
			[Child] [a_Children_1]
		WHERE
			[employee].[ParentID] = [a_Children_1].[ParentID]
	), 0)
FROM
	[Parent] [employee]

