BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [Fact]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

IF (OBJECT_ID(N'[Fact]', N'U') IS NULL)
	CREATE TABLE [Fact]
	(
		[Id] Int NOT NULL,

		CONSTRAINT [PK_Fact] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

INSERT INTO [Fact]
(
	[Id]
)
VALUES
(3),
(4),
(5)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [Tag]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

IF (OBJECT_ID(N'[Tag]', N'U') IS NULL)
	CREATE TABLE [Tag]
	(
		[Id]     Int            NOT NULL,
		[FactId] Int            NOT NULL,
		[Name]   NVarChar(4000) NOT NULL,

		CONSTRAINT [PK_Tag] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

INSERT INTO [Tag]
(
	[Id],
	[FactId],
	[Name]
)
VALUES
(1,3,N'Tag3'),
(2,3,N'Tag3'),
(3,4,N'Tag4')

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	[fact_1].[Id],
	[t1].[Id],
	[t1].[FactId],
	[t1].[Name]
FROM
	[Tag] [t1]
		RIGHT JOIN [Fact] [fact_1] ON [t1].[FactId] = [fact_1].[Id]
WHERE
	[fact_1].[Id] > 3

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [Tag]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [Fact]

