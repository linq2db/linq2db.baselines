BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Entity1711') IS NOT NULL)
	DROP TABLE [Entity1711]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Entity1711') IS NULL)
	EXECUTE('
		CREATE TABLE [Entity1711]
		(
			[Id] BigInt NOT NULL,

			CONSTRAINT [PK_Entity1711] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Relationship1711') IS NOT NULL)
	DROP TABLE [Relationship1711]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Relationship1711') IS NULL)
	EXECUTE('
		CREATE TABLE [Relationship1711]
		(
			[EntityId] BigInt NOT NULL,
			[Deleted]  Bit    NOT NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t].[Id]
FROM
	[Entity1711] [t]
WHERE
	EXISTS(
		SELECT
			1
		FROM
			[Relationship1711] [r]
		WHERE
			[r].[Deleted] = 0 AND [r].[EntityId] = [t].[Id]
	)

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Relationship1711') IS NOT NULL)
	DROP TABLE [Relationship1711]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Entity1711') IS NOT NULL)
	DROP TABLE [Entity1711]

