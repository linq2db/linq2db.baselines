-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[nm].[MiddleName]
FROM
	[Person] [nm]
WHERE
	[nm].[MiddleName] IS NOT NULL

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

