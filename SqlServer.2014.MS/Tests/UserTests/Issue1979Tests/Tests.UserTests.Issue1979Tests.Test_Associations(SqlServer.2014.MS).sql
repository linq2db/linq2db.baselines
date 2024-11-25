BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[Tag]', N'U') IS NOT NULL)
	DROP TABLE [Tag]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[Tag]', N'U') IS NULL)
	CREATE TABLE [Tag]
	(
		[Id]   BigInt         NOT NULL,
		[Name] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[Tagging]', N'U') IS NOT NULL)
	DROP TABLE [Tagging]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

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
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[Issue]', N'U') IS NOT NULL)
	DROP TABLE [Issue]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[Issue]', N'U') IS NULL)
	CREATE TABLE [Issue]
	(
		[Id] Int NOT NULL,

		CONSTRAINT [PK_Issue] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	[i].[Id]
FROM
	[Issue] [i]
WHERE
	EXISTS(
		SELECT
			1
		FROM
			[Tagging] [x]
				OUTER APPLY (
					SELECT TOP (1)
						[a_Tag].[Name]
					FROM
						[Tag] [a_Tag]
					WHERE
						CAST([x].[TagId] AS BigInt) = [a_Tag].[Id]
				) [t1]
		WHERE
			[x].[TaggableType] = N'Issue' AND [i].[Id] = [x].[TaggableId] AND
			[t1].[Name] = N'Visu'
	)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[Issue]', N'U') IS NOT NULL)
	DROP TABLE [Issue]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[Tagging]', N'U') IS NOT NULL)
	DROP TABLE [Tagging]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[Tag]', N'U') IS NOT NULL)
	DROP TABLE [Tag]

