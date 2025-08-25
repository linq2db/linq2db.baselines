BeforeExecute
-- Access.Ace.OleDb AccessOleDb (asynchronously)

SELECT
	IIF(Len([p].[FirstName]) <> 0, [p].[FirstName], IIF(NOT ([p].[MiddleName] IS NULL OR Len([p].[MiddleName]) = 0), [p].[MiddleName], [p].[LastName]))
FROM
	[Person] [p]

