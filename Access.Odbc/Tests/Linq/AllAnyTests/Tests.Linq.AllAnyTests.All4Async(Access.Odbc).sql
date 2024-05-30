BeforeExecute
-- Access.Odbc AccessODBC (asynchronously)

SELECT
	IIF(COUNT(*) = 0, True, False)
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] <= 3

