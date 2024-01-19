BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	(
		SELECT
			Count(*)
		FROM
			[Doctor] [t1]
		WHERE
			[t1].[PersonID] = [i].[PersonID]
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
			Count(*)
		FROM
			[Doctor] [t2]
		WHERE
			[t2].[PersonID] = [i].[PersonID]
	)
FROM
	[Person] [i]
WHERE
	[i].[FirstName] <> 'John'

