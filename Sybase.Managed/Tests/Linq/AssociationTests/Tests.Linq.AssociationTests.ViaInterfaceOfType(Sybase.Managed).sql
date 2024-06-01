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
			COUNT(*)
		FROM
			[SubEntity] [a_SubEntities]
		WHERE
			[x].[Id] = [a_SubEntities].[MainEntityId]
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

