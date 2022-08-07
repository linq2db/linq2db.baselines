BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
		INNER JOIN (
			SELECT NULL [Name] WHERE 1 = 0
			UNION ALL
			VALUES
				('Janet'), ('Doe')
			) [n] ON [p].[LastName] = [n].[Name]

