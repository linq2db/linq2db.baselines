BeforeExecute
-- SqlCe

DROP TABLE [Fact]

BeforeExecute
-- SqlCe

CREATE TABLE [Fact]
(
	[Id] Int NOT NULL,

	CONSTRAINT [PK_Fact] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe

INSERT INTO [Fact]
(
	[Id]
)
SELECT 3 UNION ALL
SELECT 4 UNION ALL
SELECT 5

BeforeExecute
-- SqlCe

DROP TABLE [Tag]

BeforeExecute
-- SqlCe

CREATE TABLE [Tag]
(
	[Id]     Int           NOT NULL,
	[FactId] Int           NOT NULL,
	[Name]   NVarChar(255) NOT NULL,

	CONSTRAINT [PK_Tag] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe

INSERT INTO [Tag]
(
	[Id],
	[FactId],
	[Name]
)
SELECT 1,3,'Tag3' UNION ALL
SELECT 2,3,'Tag3' UNION ALL
SELECT 3,4,'Tag4'

BeforeExecute
-- SqlCe

SELECT
	[fact_1].[Id],
	[leftTag].[Id] as [Id_1],
	[leftTag].[FactId],
	[leftTag].[Name]
FROM
	[Fact] [fact_1]
		LEFT JOIN [Tag] [leftTag] ON [fact_1].[Id] = [leftTag].[FactId]
WHERE
	[fact_1].[Id] > 3
ORDER BY
	[fact_1].[Id]

BeforeExecute
-- SqlCe

DROP TABLE [Tag]

BeforeExecute
-- SqlCe

DROP TABLE [Fact]

