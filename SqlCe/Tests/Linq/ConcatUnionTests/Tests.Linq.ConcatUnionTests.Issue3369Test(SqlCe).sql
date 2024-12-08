BeforeExecute
-- SqlCe

SELECT
	[t1].[ID],
	[t1].[OK],
	CASE
		WHEN [t1].[FirstName] = 'ddd' THEN [y].[FirstName]
		ELSE [t1].[FirstName]
	END as [c1]
FROM
	(
		SELECT
			[x].[PersonID] as [ID],
			CAST('A' AS NVarChar(255)) as [FirstName],
			CASE
				WHEN [x].[FirstName] = '123' THEN 'Y'
				ELSE 'N'
			END as [OK]
		FROM
			[Person] [x]
		WHERE
			[x].[PersonID] = 1
		UNION
		SELECT
			[x_1].[PersonID] as [ID],
			[x_1].[FirstName],
			CAST('N' AS NVarChar(255)) as [OK]
		FROM
			[Person] [x_1]
		WHERE
			[x_1].[PersonID] = 2
	) [t1]
		LEFT JOIN [Person] [y] ON [y].[PersonID] = [t1].[ID]
WHERE
	[t1].[ID] = 3

