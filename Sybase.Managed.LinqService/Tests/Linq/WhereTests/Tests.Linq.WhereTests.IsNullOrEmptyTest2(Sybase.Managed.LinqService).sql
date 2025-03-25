BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[nm].[FirstName]
FROM
	[Person] [nm]
WHERE
	NOT ('' = [nm].[FirstName] OR CHAR_LENGTH([nm].[FirstName]) = 0 AND '' <> [nm].[FirstName])

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

