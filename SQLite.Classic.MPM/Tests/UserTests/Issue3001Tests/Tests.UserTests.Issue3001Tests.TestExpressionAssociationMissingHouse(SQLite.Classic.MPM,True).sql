-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[x].[Id],
	[a_House].[Levels]
FROM
	[Pet3001] [x]
		INNER JOIN [Person3001] [a_Person] ON [x].[PersonId] = [a_Person].[Id]
		LEFT JOIN [House3001] [a_House] ON [a_Person].[HouseId] = [a_House].[Id]
ORDER BY
	[x].[Id]

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[x].[Id]
FROM
	[Pet3001] [x]
		INNER JOIN [Person3001] [a_Person] ON [x].[PersonId] = [a_Person].[Id]
		INNER JOIN [House3001] [a_House] ON [a_Person].[HouseId] = [a_House].[Id]
WHERE
	[a_House].[Levels] < 1

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[x].[Id]
FROM
	[Pet3001] [x]
		INNER JOIN [Person3001] [a_Person] ON [x].[PersonId] = [a_Person].[Id]
		INNER JOIN [House3001] [a_House] ON [a_Person].[HouseId] = [a_House].[Id]
WHERE
	[a_House].[Levels] > 1

