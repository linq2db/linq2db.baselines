BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	(
		SELECT TOP 1
			[p].[ParentID]
		FROM
			[Child] [p]
	)
FROM
	[Parent] [p_1]

