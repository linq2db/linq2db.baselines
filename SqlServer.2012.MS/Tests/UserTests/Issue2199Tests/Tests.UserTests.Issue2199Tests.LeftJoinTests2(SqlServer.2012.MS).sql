-- SqlServer.2012.MS SqlServer.2012

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
	[Manufacturer] [e]
		LEFT JOIN [Country] [co] ON [co].[Code] = [e].[CountryCode]
		LEFT JOIN (
			SELECT
				[m_1].[ManufacturerId],
				[m_1].[CountryCode],
				[m_1].[Name],
				[co_1].[Code],
				[co_1].[Name] as [Name_1]
			FROM
				[Manufacturer] [m_1]
					LEFT JOIN [Country] [co_1] ON [co_1].[Code] = [m_1].[CountryCode]
			WHERE
				[m_1].[ManufacturerId] = 2
		) [m_2] ON 1=1
WHERE
	[e].[ManufacturerId] = 1

