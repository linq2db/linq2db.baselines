BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[x_2].[ID],
	[x_2].[OK],
	[x_2].[FirstName],
	[t].[FirstName]
FROM
	(
		SELECT
			[x].[PersonID] as [ID],
			'A' as [FirstName],
			Iif([x].[FirstName] = '123', 'Y', 'N') as [OK]
		FROM
			[Person] [x]
		WHERE
			[x].[PersonID] = 1
		UNION
		SELECT
			[x_1].[PersonID] as [ID],
			[x_1].[FirstName],
			'N' as [OK]
		FROM
			[Person] [x_1]
		WHERE
			[x_1].[PersonID] = 2
	) [x_2]
		LEFT JOIN [Person] [t] ON ([t].[PersonID] = [x_2].[ID])
WHERE
	[x_2].[ID] = 3

