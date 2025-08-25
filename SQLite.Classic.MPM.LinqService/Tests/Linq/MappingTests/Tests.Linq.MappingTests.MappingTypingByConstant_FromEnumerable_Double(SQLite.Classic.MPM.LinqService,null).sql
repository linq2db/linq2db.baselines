BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite (asynchronously)

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

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite (asynchronously)

SELECT
	[arg].[Id],
	[arg].[Value]
FROM
	[Person] [entity]
		INNER JOIN (
			SELECT NULL [Id], NULL [Value] WHERE 1 = 0
			UNION ALL
			VALUES
				(1,3147483648)
			) [arg] ON [entity].[PersonID] = [arg].[Id]

