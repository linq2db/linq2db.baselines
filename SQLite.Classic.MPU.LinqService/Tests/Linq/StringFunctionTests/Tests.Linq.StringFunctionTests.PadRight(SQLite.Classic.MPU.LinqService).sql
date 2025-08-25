BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite (asynchronously)

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
		WHEN Length([p].[FirstName]) > 6 THEN [p].[FirstName]
		ELSE [p].[FirstName] || Replicate(' ', 6 - Length([p].[FirstName]))
	END || '123' = 'John  123' AND
	[p].[PersonID] = 1

