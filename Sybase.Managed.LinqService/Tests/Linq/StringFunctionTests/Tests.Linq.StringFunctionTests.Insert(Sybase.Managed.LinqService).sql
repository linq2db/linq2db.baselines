BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	CASE
		WHEN CHAR_LENGTH([p].[FirstName]) = 2 AND '' <> [p].[FirstName]
			THEN [p].[FirstName] + '123'
		ELSE Stuff([p].[FirstName], 3, 0, '123')
	END = 'Jo123hn' AND
	[p].[PersonID] = 1

