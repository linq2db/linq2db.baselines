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
	'123' + IIF(Len([p].[FirstName]) >= 6, [p].[FirstName], STRING(6 - Len([p].[FirstName]), '*') + [p].[FirstName]) = '123**John' AND
	[p].[PersonID] = 1

