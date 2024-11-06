BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	IIF(COUNT(*) > 0, True, False)
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] > 3

