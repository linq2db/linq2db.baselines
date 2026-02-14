-- Access.Ace.Odbc AccessODBC

SELECT
	(
		SELECT TOP 1
			[l].[ParentID] + 1 as [Id]
		FROM
			[Child] [l]
	)
FROM
	[Parent] [sep]

