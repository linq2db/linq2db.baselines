-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[x].[Id],
	Coalesce([a_House].[Levels], 0) > 1,
	Coalesce([a_House].[Levels], 0) < 1
FROM
	[CalcColPet] [x]
		INNER JOIN [CalcColPerson] [a_Person] ON [x].[PersonId] = [a_Person].[Id]
		LEFT JOIN [CalcColHouse] [a_House] ON [a_Person].[HouseId] = [a_House].[Id]
ORDER BY
	[x].[Id]

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[x].[Id]
FROM
	[CalcColPet] [x]
		INNER JOIN [CalcColPerson] [a_Person] ON [x].[PersonId] = [a_Person].[Id]
		INNER JOIN [CalcColHouse] [a_House] ON [a_Person].[HouseId] = [a_House].[Id]
WHERE
	[a_House].[Levels] < 1

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[x].[Id]
FROM
	[CalcColPet] [x]
		INNER JOIN [CalcColPerson] [a_Person] ON [x].[PersonId] = [a_Person].[Id]
		INNER JOIN [CalcColHouse] [a_House] ON [a_Person].[HouseId] = [a_House].[Id]
WHERE
	[a_House].[Levels] > 1

