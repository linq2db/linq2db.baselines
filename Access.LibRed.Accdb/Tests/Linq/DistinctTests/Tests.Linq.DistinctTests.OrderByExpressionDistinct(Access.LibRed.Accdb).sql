-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[x_1].[MiddleName],
	[x_1].[LastName]
FROM
	(
		SELECT DISTINCT
			[x].[MiddleName],
			CASE
				WHEN [x].[LastName] = 'Pupkin' THEN NULL
				ELSE [x].[LastName]
			END as [LastName]
		FROM
			[Person] [x]
	) [x_1]
ORDER BY
	CASE
		WHEN [x_1].[MiddleName] IS NULL THEN '-2'
		ELSE [x_1].[MiddleName]
	END DESC,
	CASE
		WHEN [x_1].[LastName] IS NULL THEN '-1'
		ELSE [x_1].[LastName]
	END

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

