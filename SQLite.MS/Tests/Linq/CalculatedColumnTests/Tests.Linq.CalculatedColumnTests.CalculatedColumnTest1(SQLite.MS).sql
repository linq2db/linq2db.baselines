BeforeExecute
-- SQLite.MS SQLite

SELECT
	[i].[PersonID],
	[i].[FirstName],
	[i].[LastName],
	[i].[MiddleName],
	[i].[Gender],
	[i].[LastName] || ', ' || [i].[FirstName],
	[i].[LastName] || ', ' || [i].[FirstName],
	(
		SELECT
			COUNT(*)
		FROM
			[Doctor] [d]
		WHERE
			[d].[PersonID] = [i].[PersonID]
	)
FROM
	[Person] [i]
WHERE
	[i].[FirstName] <> 'John'

