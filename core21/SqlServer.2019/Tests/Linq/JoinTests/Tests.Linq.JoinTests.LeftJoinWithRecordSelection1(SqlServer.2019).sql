BeforeExecute
-- SqlServer.2019 SqlServer.2017

IF (OBJECT_ID(N'[Fact]', N'U') IS NULL)
	CREATE TABLE [Fact]
	(
		[Id] Int NOT NULL,

		CONSTRAINT [PK_Fact] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2019 SqlServer.2017

INSERT INTO [Fact]
(
	[Id]
)
VALUES
(3),
(4),
(5)

BeforeExecute
-- SqlServer.2019 SqlServer.2017

IF (OBJECT_ID(N'[Tag]', N'U') IS NULL)
	CREATE TABLE [Tag]
	(
		[Id]     Int            NOT NULL,
		[FactId] Int            NOT NULL,
		[Name]   NVarChar(4000) NOT NULL,

		CONSTRAINT [PK_Tag] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2019 SqlServer.2017

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
-- SqlServer.2019 SqlServer.2017

SELECT
	[fact_1].[Id],
	[tagGroup].[Id],
	[tagGroup].[FactId],
	[tagGroup].[Name]
FROM
	[Fact] [fact_1]
		LEFT JOIN [Tag] [tagGroup] ON [fact_1].[Id] = [tagGroup].[FactId]
WHERE
	[fact_1].[Id] > 3

BeforeExecute
-- SqlServer.2019 SqlServer.2017

IF (OBJECT_ID(N'[Tag]', N'U') IS NOT NULL)
	DROP TABLE [Tag]

BeforeExecute
-- SqlServer.2019 SqlServer.2017

IF (OBJECT_ID(N'[Fact]', N'U') IS NOT NULL)
	DROP TABLE [Fact]

