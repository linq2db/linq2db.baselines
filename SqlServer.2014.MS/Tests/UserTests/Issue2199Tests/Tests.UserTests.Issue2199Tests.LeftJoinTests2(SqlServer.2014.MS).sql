BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[Manufacturer]', N'U') IS NOT NULL)
	DROP TABLE [Manufacturer]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[Manufacturer]', N'U') IS NULL)
	CREATE TABLE [Manufacturer]
	(
		[ManufacturerId] Int            NOT NULL,
		[Name]           NVarChar(4000)     NULL,
		[CountryCode]    NVarChar(4000)     NULL,

		CONSTRAINT [PK_Manufacturer] PRIMARY KEY CLUSTERED ([ManufacturerId])
	)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[Country]', N'U') IS NOT NULL)
	DROP TABLE [Country]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[Country]', N'U') IS NULL)
	CREATE TABLE [Country]
	(
		[Code] NVarChar(4000) NOT NULL,
		[Name] NVarChar(4000)     NULL,

		CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED ([Code])
	)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

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

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[Country]', N'U') IS NOT NULL)
	DROP TABLE [Country]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[Manufacturer]', N'U') IS NOT NULL)
	DROP TABLE [Manufacturer]

