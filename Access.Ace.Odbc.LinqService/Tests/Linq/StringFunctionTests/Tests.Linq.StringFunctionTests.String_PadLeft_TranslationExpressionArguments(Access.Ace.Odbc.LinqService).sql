BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	[s].[ID],
	[s].[FirstName]
FROM
	(
		SELECT
			IIF(LEN([p].[FirstName]) < [p].[PersonID], STRING([p].[PersonID] - LEN([p].[FirstName]), '.') + [p].[FirstName], [p].[FirstName]) as [FirstName],
			[p].[PersonID] as [ID]
		FROM
			[Person] [p]
	) [s]
WHERE
	[s].[FirstName] <> ''

BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

