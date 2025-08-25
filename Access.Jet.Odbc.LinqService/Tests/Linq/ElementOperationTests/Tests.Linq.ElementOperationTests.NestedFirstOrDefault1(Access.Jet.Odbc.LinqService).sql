BeforeExecute
-- Access.Jet.Odbc AccessODBC (asynchronously)

SELECT
	(
		SELECT TOP 1
			[t1].[ParentID]
		FROM
			[Child] [t1]
	),
	(
		SELECT TOP 1
			[t2].[ChildID]
		FROM
			[Child] [t2]
	)
FROM
	[Parent] [p]

