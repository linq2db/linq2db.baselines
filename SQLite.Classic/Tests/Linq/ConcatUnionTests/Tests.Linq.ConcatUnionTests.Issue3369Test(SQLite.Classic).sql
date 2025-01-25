BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t1].[ID],
	[t1].[OK],
	[t1].[FirstName],
	[y].[FirstName]
FROM
	(
		SELECT
			[x].[PersonID] as [ID],
			CASE
				WHEN [x].[FirstName] = '123' THEN 'Y'
				ELSE 'N'
			END as [OK],
			'A' as [FirstName]
		FROM
			[Person] [x]
		WHERE
			[x].[PersonID] = 1
		UNION
		SELECT
			[x_1].[PersonID] as [ID],
			'N' as [OK],
			[x_1].[FirstName]
		FROM
			[Person] [x_1]
		WHERE
			[x_1].[PersonID] = 2
	) [t1]
		LEFT JOIN [Person] [y] ON [y].[PersonID] = [t1].[ID]
WHERE
	[t1].[ID] = 3

