-- SQLite.Classic.MPU SQLite.Classic SQLite

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

-- SQLite.Classic.MPU SQLite.Classic SQLite

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

