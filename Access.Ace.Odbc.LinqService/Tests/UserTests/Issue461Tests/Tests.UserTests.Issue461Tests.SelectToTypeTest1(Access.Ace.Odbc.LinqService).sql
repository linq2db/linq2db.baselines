BeforeExecute
-- Access.Ace.Odbc AccessODBC (asynchronously)

SELECT
	(
		SELECT TOP 1
			[l].[ParentID] + 1
		FROM
			[Child] [l]
	)
FROM
	[Parent] [sep]

