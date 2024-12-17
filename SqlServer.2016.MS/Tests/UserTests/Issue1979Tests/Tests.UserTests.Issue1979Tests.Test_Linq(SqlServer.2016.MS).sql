BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

DROP TABLE IF EXISTS [Tag]

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

IF (OBJECT_ID(N'[Tag]', N'U') IS NULL)
	CREATE TABLE [Tag]
	(
		[Id]   BigInt         NOT NULL,
		[Name] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

DROP TABLE IF EXISTS [Tagging]

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

IF (OBJECT_ID(N'[Tagging]', N'U') IS NULL)
	CREATE TABLE [Tagging]
	(
		[Id]           BigInt         NOT NULL,
		[TagId]        Int            NOT NULL,
		[TaggableId]   Int            NOT NULL,
		[TaggableType] NVarChar(4000)     NULL,

		CONSTRAINT [PK_Tagging] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

DROP TABLE IF EXISTS [Issue]

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

IF (OBJECT_ID(N'[Issue]', N'U') IS NULL)
	CREATE TABLE [Issue]
	(
		[Id] Int NOT NULL,

		CONSTRAINT [PK_Issue] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	[i].[Id]
FROM
	[Issue] [i]
WHERE
	 EXISTS (
		SELECT
			*
		FROM
			[Tagging] [t_1]
				INNER JOIN [Tag] [t] ON [t_1].[TagId] = [t].[Id]
		WHERE
			[t].[Name] = N'Visu' AND [t_1].[TaggableId] = [i].[Id]
	)

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

DROP TABLE IF EXISTS [Issue]

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

DROP TABLE IF EXISTS [Tagging]

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

DROP TABLE IF EXISTS [Tag]

