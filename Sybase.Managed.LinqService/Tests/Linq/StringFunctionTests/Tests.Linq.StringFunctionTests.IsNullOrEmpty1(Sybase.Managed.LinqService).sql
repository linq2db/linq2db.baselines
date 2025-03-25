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
	NOT ('' = [p].[FirstName] OR CHAR_LENGTH([p].[FirstName]) = 0 AND '' <> [p].[FirstName]) AND
	[p].[PersonID] = 1

