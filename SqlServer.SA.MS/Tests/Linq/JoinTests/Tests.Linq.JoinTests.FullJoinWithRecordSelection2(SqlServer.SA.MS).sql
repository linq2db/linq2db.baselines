BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [Fact]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

IF (OBJECT_ID(N'[Fact]', N'U') IS NULL)
	CREATE TABLE [Fact]
	(
		[Id] Int NOT NULL,

		CONSTRAINT [PK_Fact] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

INSERT INTO [Fact]
(
	[Id]
)
VALUES
(3),
(4),
(5)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [Tag]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

IF (OBJECT_ID(N'[Tag]', N'U') IS NULL)
	CREATE TABLE [Tag]
	(
		[Id]     Int            NOT NULL,
		[FactId] Int            NOT NULL,
		[Name]   NVarChar(4000) NOT NULL,

		CONSTRAINT [PK_Tag] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

INSERT INTO [Tag]
(
	[Id],
	[FactId],
	[Name]
)
VALUES
(1,3,N'Tag3'),
(2,3,N'Tag3'),
(3,4,N'Tag4'),
(4,6,N'Tag6')

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[fact_1].[Id],
	[t1].[Id],
	[t1].[FactId],
	[t1].[Name]
FROM
	[Tag] [t1]
		FULL JOIN [Fact] [fact_1] ON [t1].[FactId] = [fact_1].[Id]
WHERE
	([fact_1].[Id] > 3 OR [t1].[FactId] > 3)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [Tag]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [Fact]

