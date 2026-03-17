-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[arg].[Id],
	[arg].[Value]
FROM
	[Person] [entity]
		INNER JOIN (
			SELECT NULL [Id], NULL [Value] WHERE 1 = 0
			UNION ALL
			VALUES
				(1,NULL)
			) [arg] ON [entity].[PersonID] = [arg].[Id]

-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[arg].[Id],
	[arg].[Value]
FROM
	[Person] [entity]
		INNER JOIN (
			SELECT NULL [Id], NULL [Value] WHERE 1 = 0
			UNION ALL
			VALUES
				(1,3.14748365E+09)
			) [arg] ON [entity].[PersonID] = [arg].[Id]

