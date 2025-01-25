BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	[t1].[ID],
	[t1].[OK],
	IIF([t1].[FirstName] = N'ddd', [y].[FirstName], [t1].[FirstName])
FROM
	(
		SELECT
			[x].[PersonID] as [ID],
			CAST(N'A' AS NVarChar(4000)) as [FirstName],
			IIF([x].[FirstName] = N'123', N'Y', N'N') as [OK]
		FROM
			[Person] [x]
		WHERE
			[x].[PersonID] = 1
		UNION
		SELECT
			[x_1].[PersonID] as [ID],
			[x_1].[FirstName],
			CAST(N'N' AS NVarChar(4000)) as [OK]
		FROM
			[Person] [x_1]
		WHERE
			[x_1].[PersonID] = 2
	) [t1]
		LEFT JOIN [Person] [y] ON [y].[PersonID] = [t1].[ID]
WHERE
	[t1].[ID] = 3

