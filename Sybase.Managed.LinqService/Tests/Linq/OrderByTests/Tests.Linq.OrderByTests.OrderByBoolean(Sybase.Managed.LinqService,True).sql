BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]
ORDER BY
	CASE
		WHEN CHAR_LENGTH([t1].[FirstName]) > 1 THEN 1
		ELSE 0
	END

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

