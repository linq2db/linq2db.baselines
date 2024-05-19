BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'MainEntity') IS NOT NULL)
	DROP TABLE [MainEntity]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'MainEntity') IS NULL)
	EXECUTE('
		CREATE TABLE [MainEntity]
		(
			[Id] Int NOT NULL,

			CONSTRAINT [PK_MainEntity] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'SubEntity') IS NOT NULL)
	DROP TABLE [SubEntity]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'SubEntity') IS NULL)
	EXECUTE('
		CREATE TABLE [SubEntity]
		(
			[Id]           Int NOT NULL,
			[MainEntityId] Int NOT NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	(
		SELECT
			Count(*)
		FROM
			[SubEntity] [t1]
		WHERE
			[x].[Id] = [t1].[MainEntityId]
	)
FROM
	[MainEntity] [x]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'SubEntity') IS NOT NULL)
	DROP TABLE [SubEntity]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'MainEntity') IS NOT NULL)
	DROP TABLE [MainEntity]

