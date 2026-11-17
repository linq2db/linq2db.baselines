-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[t1].[MiddleName]
FROM
	(
		SELECT DISTINCT
			[ch].[MiddleName]
		FROM
			[Person] [ch]
	) [t1]
ORDER BY
	CASE
		WHEN [t1].[MiddleName] IS NULL THEN '-1'
		ELSE [t1].[MiddleName]
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

