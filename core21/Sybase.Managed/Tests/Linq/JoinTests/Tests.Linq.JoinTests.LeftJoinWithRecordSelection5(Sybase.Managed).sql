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
	[ft].[Id],
	[t].[Id],
	[t].[FactId],
	[t].[Name]
FROM
	[Fact] [ft]
		LEFT JOIN [Tag] [t] ON [t].[FactId] = [ft].[Id]
WHERE
	[ft].[Id] > 3

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Tag') IS NOT NULL)
	DROP TABLE [Tag]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Fact') IS NOT NULL)
	DROP TABLE [Fact]

