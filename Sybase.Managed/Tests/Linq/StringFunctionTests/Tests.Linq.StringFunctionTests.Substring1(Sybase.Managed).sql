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
	Substring([p].[FirstName], 2, CASE
		WHEN '' = [p].[FirstName] THEN 0
		ELSE CHAR_LENGTH([p].[FirstName])
	END - 1) = 'ohn' AND
	[p].[PersonID] = 1

