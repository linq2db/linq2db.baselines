BeforeExecute
-- SQLite.Classic SQLite

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			[Doctor] [d]
		WHERE
			[d].[PersonID] = [i].[PersonID]
	),
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
			[Doctor] [d_1]
		WHERE
			[d_1].[PersonID] = [i].[PersonID]
	)
FROM
	[Person] [i]
WHERE
	[i].[FirstName] <> 'John'

