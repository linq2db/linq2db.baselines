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
	'123' + CASE
		WHEN CHAR_LENGTH([p].[FirstName]) > 6 THEN [p].[FirstName]
		ELSE Replicate(' ', 6 - CHAR_LENGTH([p].[FirstName])) + [p].[FirstName]
	END = '123  John' AND
	[p].[PersonID] = 1

