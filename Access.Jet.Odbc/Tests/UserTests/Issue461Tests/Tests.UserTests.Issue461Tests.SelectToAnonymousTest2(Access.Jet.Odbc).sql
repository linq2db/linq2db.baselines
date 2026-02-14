-- Access.Jet.Odbc AccessODBC

SELECT
	(
		SELECT TOP 1
			[l].[ParentID] + 1 as [Id]
		FROM
			[Child] [l]
	),
	(
		SELECT TOP 1
			[l_1].[ParentID]
		FROM
			[Child] [l_1]
	)
FROM
	[Parent] [sep]

