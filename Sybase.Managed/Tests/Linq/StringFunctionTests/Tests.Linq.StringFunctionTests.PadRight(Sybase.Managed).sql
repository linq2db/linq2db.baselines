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
		WHEN CHAR_LENGTH([p].[FirstName]) > 6 AND '' <> [p].[FirstName]
			THEN [p].[FirstName]
		ELSE [p].[FirstName] + Replicate(' ', 6 - CASE
			WHEN '' = [p].[FirstName] THEN 0
			ELSE CHAR_LENGTH([p].[FirstName])
		END)
	END + '123' = 'John  123' AND
	[p].[PersonID] = 1

