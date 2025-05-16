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
		WHEN '' = [p].[LastName] THEN 0
		ELSE CHAR_LENGTH([p].[LastName])
	END - CharIndex('p', Reverse([p].[LastName])) = 2 AND
	CharIndex('p', [p].[LastName]) <> 0 AND [p].[PersonID] = 1

