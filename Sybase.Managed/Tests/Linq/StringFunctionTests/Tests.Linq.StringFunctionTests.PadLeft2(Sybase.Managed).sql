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
		WHEN '' = [p].[FirstName] OR CHAR_LENGTH([p].[FirstName]) < 6 AND '' <> [p].[FirstName]
			THEN LPAD([p].[FirstName], 6, '*')
		ELSE [p].[FirstName]
	END = '123**John' AND
	[p].[PersonID] = 1

