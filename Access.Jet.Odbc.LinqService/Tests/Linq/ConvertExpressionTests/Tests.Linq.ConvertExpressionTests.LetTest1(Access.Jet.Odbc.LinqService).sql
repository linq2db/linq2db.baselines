BeforeExecute
-- Access.Jet.Odbc AccessODBC (asynchronously)

SELECT
	(
		SELECT TOP 1
			[a_Children].[ParentID]
		FROM
			[Child] [a_Children]
		WHERE
			[p].[ParentID] = [a_Children].[ParentID]
	)
FROM
	[Parent] [p]
WHERE
	(
		SELECT TOP 1
			[a_Children].[ParentID]
		FROM
			[Child] [a_Children]
		WHERE
			[p].[ParentID] = [a_Children].[ParentID]
	) IS NOT NULL

