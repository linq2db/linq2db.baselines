BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	IIF([q].[ParentID] IS NOT NULL, [q].[ParentID], 0)
FROM
	[Parent] [q]

