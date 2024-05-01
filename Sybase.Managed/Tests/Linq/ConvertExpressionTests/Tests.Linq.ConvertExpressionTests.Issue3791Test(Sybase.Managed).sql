BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue3791Table') IS NOT NULL)
	DROP TABLE [Issue3791Table]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue3791Table') IS NULL)
	EXECUTE('
		CREATE TABLE [Issue3791Table]
		(
			[Id]      Int           IDENTITY NOT NULL,
			[OtherId] NVarChar(255)              NULL,

			CONSTRAINT [PK_Issue3791Table] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue3791GuidTable') IS NOT NULL)
	DROP TABLE [Issue3791GuidTable]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue3791GuidTable') IS NULL)
	EXECUTE('
		CREATE TABLE [Issue3791GuidTable]
		(
			[Id] VARCHAR(36) NOT NULL,

			CONSTRAINT [PK_Issue3791GuidTable] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[OtherId],
	[a_Association].[Id]
FROM
	[Issue3791Table] [t1]
		LEFT JOIN [Issue3791GuidTable] [a_Association] ON [t1].[OtherId] = CAST([a_Association].[Id] AS NVarChar(36))

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue3791GuidTable') IS NOT NULL)
	DROP TABLE [Issue3791GuidTable]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue3791Table') IS NOT NULL)
	DROP TABLE [Issue3791Table]

