BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Fact]', N'U') IS NOT NULL)
	DROP TABLE [Fact]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Fact]', N'U') IS NULL)
	CREATE TABLE [Fact]
	(
		[Id] Int NOT NULL,

		CONSTRAINT [PK_Fact] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

INSERT INTO [Fact]
(
	[Id]
)
SELECT 3 UNION ALL
SELECT 4 UNION ALL
SELECT 5

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Tag]', N'U') IS NOT NULL)
	DROP TABLE [Tag]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Tag]', N'U') IS NULL)
	CREATE TABLE [Tag]
	(
		[Id]     Int            NOT NULL,
		[FactId] Int            NOT NULL,
		[Name]   NVarChar(4000) NOT NULL,

		CONSTRAINT [PK_Tag] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

INSERT INTO [Tag]
(
	[Id],
	[FactId],
	[Name]
)
SELECT 1,3,N'Tag3' UNION ALL
SELECT 2,3,N'Tag3' UNION ALL
SELECT 3,4,N'Tag4' UNION ALL
SELECT 4,6,N'Tag6'

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[f].[Id],
	[ft].[Id],
	[ft].[FactId],
	[ft].[Name]
FROM
	[Tag] [ft]
		FULL JOIN [Fact] [f] ON [ft].[FactId] = [f].[Id]
WHERE
	[f].[Id] > 3 AND [f].[Id] IS NOT NULL OR [ft].[FactId] > 3 AND [ft].[FactId] IS NOT NULL

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Tag]', N'U') IS NOT NULL)
	DROP TABLE [Tag]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Fact]', N'U') IS NOT NULL)
	DROP TABLE [Fact]

