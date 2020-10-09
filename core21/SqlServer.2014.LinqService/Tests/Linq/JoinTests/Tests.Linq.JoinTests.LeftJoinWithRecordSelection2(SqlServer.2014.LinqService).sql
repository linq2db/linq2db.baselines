BeforeExecute
-- SqlServer.2014 SqlServer.2012

CREATE TABLE [Fact]
(
	[Id] Int NOT NULL,

	CONSTRAINT [PK_Fact] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- SqlServer.2014 SqlServer.2012

INSERT INTO [Fact]
(
	[Id]
)
VALUES
(3),
(4),
(5)

BeforeExecute
-- SqlServer.2014 SqlServer.2012

CREATE TABLE [Tag]
(
	[Id]     Int            NOT NULL,
	[FactId] Int            NOT NULL,
	[Name]   NVarChar(4000) NOT NULL,

	CONSTRAINT [PK_Tag] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- SqlServer.2014 SqlServer.2012

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
-- SqlServer.2014 SqlServer.2012

SELECT 
	[fact_1].[Id], 
	[tag_1].[Id], 
	[tag_1].[FactId], 
	[tag_1].[Name]
FROM
	[Fact] [fact_1]
		LEFT JOIN [Tag] [tag_1] ON [tag_1].[FactId] = [fact_1].[Id]
WHERE
	[fact_1].[Id] > 3

BeforeExecute
-- SqlServer.2014 SqlServer.2012

DROP TABLE [Tag]

BeforeExecute
-- SqlServer.2014 SqlServer.2012

DROP TABLE [Fact]

