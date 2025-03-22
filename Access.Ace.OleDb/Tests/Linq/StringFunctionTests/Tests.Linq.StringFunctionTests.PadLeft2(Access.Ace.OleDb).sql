BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	'123' + IIF(LEN([p].[FirstName]) < 6, STRING(6 - LEN([p].[FirstName]), '*') + [p].[FirstName], [p].[FirstName]) = '123**John' AND
	[p].[PersonID] = 1

