BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite (asynchronously)

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
		INNER JOIN (
			SELECT NULL [item] WHERE 1 = 0
			UNION ALL
			VALUES
				('Janet'), ('Doe'), ('John'), ('Doe')
			) [n] ON [p].[LastName] = [n].[item]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite (asynchronously)

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
		INNER JOIN (
			SELECT NULL [item] WHERE 1 = 0
			UNION ALL
			VALUES
				('Janet'), ('Doe1'), ('John'), ('Doe')
			) [n] ON [p].[LastName] = [n].[item]

