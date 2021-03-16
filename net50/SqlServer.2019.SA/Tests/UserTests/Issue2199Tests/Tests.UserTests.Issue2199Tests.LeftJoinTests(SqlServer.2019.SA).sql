﻿BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

CREATE TABLE [Manufacturer]
(
	[ManufacturerId] Int            NOT NULL,
	[Name]           NVarChar(4000)     NULL,
	[CountryCode]    NVarChar(4000)     NULL,

	CONSTRAINT [PK_Manufacturer] PRIMARY KEY CLUSTERED ([ManufacturerId])
)

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

CREATE TABLE [Country]
(
	[Code] NVarChar(4000) NOT NULL,
	[Name] NVarChar(4000)     NULL,

	CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED ([Code])
)

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

SELECT
	[e_1].[ManufacturerId],
	[e_1].[CountryCode],
	[e_1].[Name],
	[ce].[Code],
	[ce].[Name],
	[t1].[ManufacturerId],
	[t1].[CountryCode],
	[t1].[Name],
	[t1].[co],
	[t1].[Name_1]
FROM
	[Manufacturer] [e_1]
		LEFT JOIN [Country] [ce] ON [e_1].[CountryCode] = [ce].[Code]
		LEFT JOIN (
			SELECT
				[e].[ManufacturerId],
				[e].[CountryCode],
				[e].[Name],
				[ce_1].[Code] as [co],
				[ce_1].[Name] as [Name_1]
			FROM
				[Manufacturer] [e]
					LEFT JOIN [Country] [ce_1] ON [e].[CountryCode] = [ce_1].[Code]
			WHERE
				[e].[ManufacturerId] = 2
		) [t1] ON 1=1
WHERE
	[e_1].[ManufacturerId] = 1

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

DROP TABLE [Country]

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

DROP TABLE [Manufacturer]

