-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[x].[Id],
	[a_City].[Name] || ' ' || CAST([a_City].[Population] AS NVarChar(11))
FROM
	[Pet3043] [x]
		INNER JOIN [Person3043] [a_Person] ON [x].[PersonId] = [a_Person].[Id]
		LEFT JOIN ([House3043] [a_House]
			LEFT JOIN ([Street3043] [a_Street]
				LEFT JOIN [City3043] [a_City] ON [a_Street].[CityId] = [a_City].[Id])
			ON [a_House].[StreetId] = [a_Street].[Id])
		ON [a_Person].[HouseId] = [a_House].[Id]
LIMIT 1

