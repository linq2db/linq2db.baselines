BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	Count(*)
FROM
	[Child] [c_1]
		INNER JOIN [Parent] [p] ON ([c_1].[ParentID] = [p].[ParentID])

