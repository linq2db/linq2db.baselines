BeforeExecute
-- SqlServer.2012

SELECT
	[t1].[ID],
	[t1].[OK],
	[t1].[FirstName],
	[y].[FirstName]
FROM
	(
		SELECT
			[x].[PersonID] as [ID],
			IIF([x].[FirstName] = N'123', N'Y', N'N') as [OK],
			N'A' as [FirstName]
		FROM
			[Person] [x]
		WHERE
			[x].[PersonID] = 1
		UNION
		SELECT
			[x_1].[PersonID] as [ID],
			N'N' as [OK],
			[x_1].[FirstName]
		FROM
			[Person] [x_1]
		WHERE
			[x_1].[PersonID] = 2
	) [t1]
		LEFT JOIN [Person] [y] ON [y].[PersonID] = [t1].[ID]
WHERE
	[t1].[ID] = 3

