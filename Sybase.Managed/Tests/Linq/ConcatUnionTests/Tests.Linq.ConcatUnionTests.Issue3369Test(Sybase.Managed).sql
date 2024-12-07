BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[ID],
	[t1].[c2],
	CASE
		WHEN [t1].[c1] = 'ddd' THEN [y].[FirstName]
		ELSE [t1].[c1]
	END
FROM
	(
		SELECT
			[x].[PersonID] as [ID],
			CAST('A' AS NVarChar(255)) as [c1],
			CASE
				WHEN [x].[FirstName] = '123' THEN 'Y'
				ELSE 'N'
			END as [c2]
		FROM
			[Person] [x]
		WHERE
			[x].[PersonID] = 1
		UNION
		SELECT
			[x_1].[PersonID] as [ID],
			[x_1].[FirstName] as [c1],
			CAST('N' AS NVarChar(255)) as [c2]
		FROM
			[Person] [x_1]
		WHERE
			[x_1].[PersonID] = 2
	) [t1]
		LEFT JOIN [Person] [y] ON [y].[PersonID] = [t1].[ID]
WHERE
	[t1].[ID] = 3

