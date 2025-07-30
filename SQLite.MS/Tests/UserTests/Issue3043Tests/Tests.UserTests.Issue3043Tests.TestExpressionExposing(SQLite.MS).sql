BeforeExecute
-- SQLite.MS SQLite

SELECT
	[x].[Id],
	[a_City].[Name] || ' ' || [a_City].[Population]
FROM
	[Pet3043] [x]
		INNER JOIN [Person3043] [a_Person] ON [x].[PersonId] = [a_Person].[Id]
		LEFT JOIN [House3043] [a_House] ON [a_Person].[HouseId] = [a_House].[Id]
		LEFT JOIN [Street3043] [a_Street] ON [a_House].[StreetId] = [a_Street].[Id]
		LEFT JOIN [City3043] [a_City] ON [a_Street].[CityId] = [a_City].[Id]
LIMIT 1

