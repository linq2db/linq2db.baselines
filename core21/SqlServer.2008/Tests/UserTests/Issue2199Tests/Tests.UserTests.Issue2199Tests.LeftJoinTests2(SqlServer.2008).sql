BeforeExecute
-- SqlServer.2008

CREATE TABLE [Manufacturer]
(
	[ManufacturerId] Int            NOT NULL,
	[Name]           NVarChar(4000)     NULL,
	[CountryCode]    NVarChar(4000)     NULL,

	CONSTRAINT [PK_Manufacturer] PRIMARY KEY CLUSTERED ([ManufacturerId])
)

BeforeExecute
-- SqlServer.2008

CREATE TABLE [Country]
(
	[Code] NVarChar(4000) NOT NULL,
	[Name] NVarChar(4000)     NULL,

	CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED ([Code])
)

BeforeExecute
-- SqlServer.2008

SELECT
	[e_1].[ManufacturerId],
	[e_1].[CountryCode],
	[e_1].[Name],
	[co].[Code],
	[co].[Name],
	[t1].[ManufacturerId],
	[t1].[CountryCode],
	[t1].[Name],
	[t1].[Code],
	[t1].[Name_1]
FROM
	[Manufacturer] [e_1]
		LEFT JOIN [Country] [co] ON [co].[Code] = [e_1].[CountryCode]
		LEFT JOIN (
			SELECT
				[e].[ManufacturerId],
				[e].[CountryCode],
				[e].[Name],
				[co_1].[Code],
				[co_1].[Name] as [Name_1]
			FROM
				[Manufacturer] [e]
					LEFT JOIN [Country] [co_1] ON [co_1].[Code] = [e].[CountryCode]
			WHERE
				[e].[ManufacturerId] = 2
		) [t1] ON 1=1
WHERE
	[e_1].[ManufacturerId] = 1

BeforeExecute
-- SqlServer.2008

DROP TABLE [Country]

BeforeExecute
-- SqlServer.2008

DROP TABLE [Manufacturer]

