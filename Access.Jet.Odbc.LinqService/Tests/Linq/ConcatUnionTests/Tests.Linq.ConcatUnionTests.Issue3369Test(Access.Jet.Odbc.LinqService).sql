BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[ID],
	[t1].[OK],
	IIF([t1].[FirstName] = 'ddd', [y].[FirstName], [t1].[FirstName])
FROM
	(
		SELECT
			[x].[PersonID] as [ID],
			CStr('A') as [FirstName],
			IIF([x].[FirstName] = '123', 'Y', 'N') as [OK]
		FROM
			[Person] [x]
		WHERE
			[x].[PersonID] = 1
		UNION
		SELECT
			[x_1].[PersonID] as [ID],
			[x_1].[FirstName],
			CStr('N') as [OK]
		FROM
			[Person] [x_1]
		WHERE
			[x_1].[PersonID] = 2
	) [t1]
		LEFT JOIN [Person] [y] ON ([y].[PersonID] = [t1].[ID])
WHERE
	[t1].[ID] = 3

