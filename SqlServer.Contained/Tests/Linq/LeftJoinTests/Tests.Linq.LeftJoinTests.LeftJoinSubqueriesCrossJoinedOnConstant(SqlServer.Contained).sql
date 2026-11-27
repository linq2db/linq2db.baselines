-- SqlServer.Contained SqlServer.2025
SELECT
	[e].[ManufacturerId],
	[e].[CountryCode],
	[e].[Name],
	[co].[Code],
	[co].[Name],
	[m_2].[ManufacturerId],
	[m_2].[CountryCode],
	[m_2].[Name],
	[m_2].[Code],
	[m_2].[Name_1]
FROM
	[LeftJoinManufacturer] [e]
		LEFT JOIN [LeftJoinCountry] [co] ON [e].[CountryCode] = [co].[Code]
		LEFT JOIN (
			SELECT
				[m_1].[ManufacturerId],
				[m_1].[CountryCode],
				[m_1].[Name],
				[co_1].[Code],
				[co_1].[Name] as [Name_1]
			FROM
				[LeftJoinManufacturer] [m_1]
					LEFT JOIN [LeftJoinCountry] [co_1] ON [m_1].[CountryCode] = [co_1].[Code]
			WHERE
				[m_1].[ManufacturerId] = 2
		) [m_2] ON 1=1
WHERE
	[e].[ManufacturerId] = 1

