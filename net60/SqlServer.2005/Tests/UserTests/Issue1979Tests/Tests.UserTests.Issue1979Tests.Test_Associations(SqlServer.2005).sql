﻿BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Tag]', N'U') IS NOT NULL)
	DROP TABLE [Tag]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Tag]', N'U') IS NULL)
	CREATE TABLE [Tag]
	(
		[Id]   BigInt         NOT NULL,
		[Name] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Tagging]', N'U') IS NOT NULL)
	DROP TABLE [Tagging]

BeforeExecute
-- SqlServer.2005

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
-- SqlServer.2005

IF (OBJECT_ID(N'[Issue]', N'U') IS NOT NULL)
	DROP TABLE [Issue]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Issue]', N'U') IS NULL)
	CREATE TABLE [Issue]
	(
		[Id] Int NOT NULL,

		CONSTRAINT [PK_Issue] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2005
DECLARE @take Int -- Int32
SET     @take = 1

SELECT
	[i].[Id]
FROM
	[Issue] [i]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[Tagging] [_1]
				OUTER APPLY (
					SELECT TOP (@take)
						[_].[Name]
					FROM
						[Tag] [_]
					WHERE
						Convert(BigInt, [_1].[TagId]) = [_].[Id]
				) [a_Tag]
		WHERE
			[_1].[TaggableType] = N'Issue' AND [i].[Id] = [_1].[TaggableId] AND
			[a_Tag].[Name] = N'Visu'
	)

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Issue]', N'U') IS NOT NULL)
	DROP TABLE [Issue]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Tagging]', N'U') IS NOT NULL)
	DROP TABLE [Tagging]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Tag]', N'U') IS NOT NULL)
	DROP TABLE [Tag]

