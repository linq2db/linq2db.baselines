BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Fact') IS NOT NULL)
	DROP TABLE [Fact]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Fact') IS NULL)
	EXECUTE('
		CREATE TABLE [Fact]
		(
			[Id] Int NOT NULL,

			CONSTRAINT [PK_Fact] PRIMARY KEY CLUSTERED ([Id])
		)
	')

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

IF (OBJECT_ID(N'Tag') IS NOT NULL)
	DROP TABLE [Tag]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Tag') IS NULL)
	EXECUTE('
		CREATE TABLE [Tag]
		(
			[Id]     Int           NOT NULL,
			[FactId] Int           NOT NULL,
			[Name]   NVarChar(255) NOT NULL,

			CONSTRAINT [PK_Tag] PRIMARY KEY CLUSTERED ([Id])
		)
	')

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
	[Fact] [fact_1]
		LEFT JOIN [Tag] [leftTag] ON [fact_1].[Id] = [leftTag].[FactId]
WHERE
	[fact_1].[Id] > 3
ORDER BY
	[fact_1].[Id]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Tag') IS NOT NULL)
	DROP TABLE [Tag]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Fact') IS NOT NULL)
	DROP TABLE [Fact]

