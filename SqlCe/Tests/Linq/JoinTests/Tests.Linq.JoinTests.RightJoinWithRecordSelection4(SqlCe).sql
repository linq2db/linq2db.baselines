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
	[f].[Id],
	[ft].[Id] as [Id_1],
	[ft].[FactId],
	[ft].[Name]
FROM
	[Tag] [ft]
		RIGHT JOIN [Fact] [f] ON [ft].[FactId] = [f].[Id]
WHERE
	[f].[Id] > 3

BeforeExecute
-- SqlCe

DROP TABLE [Tag]

BeforeExecute
-- SqlCe

DROP TABLE [Fact]

