-- SQLite.Classic SQLite
SELECT
	[x].[Id],
	Coalesce([a_City].[Name], '') || ' ' || CAST(Coalesce([a_City].[Population], 0) AS NVarChar(11))
FROM
	[AssocChainPet] [x]
		INNER JOIN [AssocChainPerson] [a_Person] ON [x].[PersonId] = [a_Person].[Id]
		LEFT JOIN [AssocChainHouse] [a_House] ON [a_Person].[HouseId] = [a_House].[Id]
		LEFT JOIN [AssocChainStreet] [a_Street] ON [a_House].[StreetId] = [a_Street].[Id]
		LEFT JOIN [AssocChainCity] [a_City] ON [a_Street].[CityId] = [a_City].[Id]
ORDER BY
	[x].[Id]

