BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [Tag]

BeforeExecute
-- SqlServer.2022

IF (OBJECT_ID(N'[Tag]', N'U') IS NULL)
	CREATE TABLE [Tag]
	(
		[Id]   BigInt         NOT NULL,
		[Name] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [Tagging]

BeforeExecute
-- SqlServer.2022

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
-- SqlServer.2022

DROP TABLE IF EXISTS [Issue]

BeforeExecute
-- SqlServer.2022

IF (OBJECT_ID(N'[Issue]', N'U') IS NULL)
	CREATE TABLE [Issue]
	(
		[Id] Int NOT NULL,

		CONSTRAINT [PK_Issue] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2022

SELECT
	[i].[Id]
FROM
	[Issue] [i]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[Tagging] [x]
				OUTER APPLY (
					SELECT TOP (1)
						[a_Tag].[Name]
					FROM
						[Tag] [a_Tag]
					WHERE
						Convert(BigInt, [x].[TagId]) = [a_Tag].[Id]
				) [t1]
		WHERE
			[t1].[Name] = N'Visu' AND [i].[Id] = [x].[TaggableId] AND
			[x].[TaggableType] = N'Issue'
	)

BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [Issue]

BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [Tagging]

BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [Tag]

