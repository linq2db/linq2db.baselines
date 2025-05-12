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
		WHEN '' = [p].[FirstName] THEN 0
		ELSE CHAR_LENGTH([p].[FirstName])
	END = CHAR_LENGTH('John') AND
	[p].[PersonID] = 1

