BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue3140Parent') IS NOT NULL)
	DROP TABLE [Issue3140Parent]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue3140Parent') IS NULL)
	EXECUTE('
		CREATE TABLE [Issue3140Parent]
		(
			[Id]      Int NOT NULL,
			[ChildId] Int NOT NULL,

			CONSTRAINT [PK_Issue3140Parent] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue3140Child') IS NOT NULL)
	DROP TABLE [Issue3140Child]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue3140Child') IS NULL)
	EXECUTE('
		CREATE TABLE [Issue3140Child]
		(
			[Id]   Int           NOT NULL,
			[Name] NVarChar(255)     NULL,

			CONSTRAINT [PK_Issue3140Child] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[ChildId],
	[a_Child].[Id],
	[a_Child].[Name]
FROM
	[Issue3140Parent] [t1]
		LEFT JOIN [Issue3140Child] [a_Child] ON [t1].[ChildId] = [a_Child].[Id]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue3140Child') IS NOT NULL)
	DROP TABLE [Issue3140Child]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue3140Parent') IS NOT NULL)
	DROP TABLE [Issue3140Parent]

