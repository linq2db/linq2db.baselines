BeforeExecute
-- Sybase.Managed Sybase

CREATE TABLE [Fact]
(
	[Id] Int NOT NULL,

	CONSTRAINT [PK_Fact] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [Fact]
(
	[Id]
)
SELECT 3 UNION ALL
SELECT 4 UNION ALL
SELECT 5

BeforeExecute
-- Sybase.Managed Sybase

CREATE TABLE [Tag]
(
	[Id]     Int           NOT NULL,
	[FactId] Int           NOT NULL,
	[Name]   NVarChar(255) NOT NULL,

	CONSTRAINT [PK_Tag] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Sybase.Managed Sybase

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
-- Sybase.Managed Sybase

SELECT 
	[fact_1].[Id], 
	[leftTag].[Id], 
	[leftTag].[FactId], 
	[leftTag].[Name]
FROM
	[Tag] [leftTag]
		RIGHT JOIN [Fact] [fact_1] ON [leftTag].[FactId] = [fact_1].[Id]
WHERE
	[fact_1].[Id] > 3

BeforeExecute
-- Sybase.Managed Sybase

DROP TABLE [Tag]

BeforeExecute
-- Sybase.Managed Sybase

DROP TABLE [Fact]

