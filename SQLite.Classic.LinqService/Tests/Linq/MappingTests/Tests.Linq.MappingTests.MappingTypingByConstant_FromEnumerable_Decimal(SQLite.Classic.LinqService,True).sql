BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

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
-- SQLite.Classic SQLite (asynchronously)

SELECT
	[arg].[Id],
	[arg].[Value]
FROM
	[Person] [entity]
		INNER JOIN (
			SELECT NULL [Id], NULL [Value] WHERE 1 = 0
			UNION ALL
			VALUES
				(1,2147483648.123)
			) [arg] ON [entity].[PersonID] = [arg].[Id]

