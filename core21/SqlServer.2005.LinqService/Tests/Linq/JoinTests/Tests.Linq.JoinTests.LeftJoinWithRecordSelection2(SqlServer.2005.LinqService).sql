BeforeExecute
-- SqlServer.2005

CREATE TABLE [Fact]
(
	[Id] Int NOT NULL,

	CONSTRAINT [PK_Fact] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- SqlServer.2005

INSERT INTO [Fact]
(
	[Id]
)
SELECT 3 UNION ALL
SELECT 4 UNION ALL
SELECT 5

BeforeExecute
-- SqlServer.2005

CREATE TABLE [Tag]
(
	[Id]     Int            NOT NULL,
	[FactId] Int            NOT NULL,
	[Name]   NVarChar(4000) NOT NULL,

	CONSTRAINT [PK_Tag] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- SqlServer.2005

INSERT INTO [Tag]
(
	[Id],
	[FactId],
	[Name]
)
SELECT 1,3,N'Tag3' UNION ALL
SELECT 2,3,N'Tag3' UNION ALL
SELECT 3,4,N'Tag4'

BeforeExecute
-- SqlServer.2005

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
-- SqlServer.2005

DROP TABLE [Tag]

BeforeExecute
-- SqlServer.2005

DROP TABLE [Fact]

