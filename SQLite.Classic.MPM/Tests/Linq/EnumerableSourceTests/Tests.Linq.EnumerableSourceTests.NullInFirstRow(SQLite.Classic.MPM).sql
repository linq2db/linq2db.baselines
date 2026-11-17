-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[r].[Id],
	[r].[Value],
	[r].[Name]
FROM
	[Person] [p]
		INNER JOIN (
			SELECT NULL [Id], NULL [Value], NULL [Name] WHERE 1 = 0
			UNION ALL
			VALUES
				(1,NULL,'a'), (2,2,NULL)
			) [r] ON [p].[PersonID] = [r].[Id]
ORDER BY
	[r].[Id]

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

