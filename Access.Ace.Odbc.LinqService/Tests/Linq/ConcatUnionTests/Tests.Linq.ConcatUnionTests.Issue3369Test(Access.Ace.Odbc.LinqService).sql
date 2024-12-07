BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	[t1].[ID],
	[t1].[c2],
	IIF([t1].[c1] = 'ddd', [y].[FirstName], [t1].[c1])
FROM
	(
		SELECT
			[x].[PersonID] as [ID],
			CStr('A') as [c1],
			IIF([x].[FirstName] = '123', 'Y', 'N') as [c2]
		FROM
			[Person] [x]
		WHERE
			[x].[PersonID] = 1
		UNION
		SELECT
			[x_1].[PersonID] as [ID],
			[x_1].[FirstName] as [c1],
			CStr('N') as [c2]
		FROM
			[Person] [x_1]
		WHERE
			[x_1].[PersonID] = 2
	) [t1]
		LEFT JOIN [Person] [y] ON ([y].[PersonID] = [t1].[ID])
WHERE
	[t1].[ID] = 3

