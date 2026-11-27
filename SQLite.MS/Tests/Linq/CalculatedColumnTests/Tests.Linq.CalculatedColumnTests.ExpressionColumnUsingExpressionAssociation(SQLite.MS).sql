-- SQLite.MS SQLite
SELECT
	[x].[Id],
	Coalesce([a_House].[Levels], 0) > 1
FROM
	[CalcColPet] [x]
		INNER JOIN [CalcColPerson] [a_Person] ON [x].[PersonId] = [a_Person].[Id]
		LEFT JOIN [CalcColHouse] [a_House] ON [a_Person].[HouseId] = [a_House].[Id]
LIMIT 1

