BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'User') IS NOT NULL)
	DROP TABLE [User]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'User') IS NULL)
	EXECUTE('
		CREATE TABLE [User]
		(
			[Id] Int NOT NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Resource') IS NOT NULL)
	DROP TABLE [Resource]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Resource') IS NULL)
	EXECUTE('
		CREATE TABLE [Resource]
		(
			[Id]                 Int NOT NULL,
			[AssociatedObjectId] Int NOT NULL,
			[AssociationTypeId]  Int     NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Lookup') IS NOT NULL)
	DROP TABLE [Lookup]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Lookup') IS NULL)
	EXECUTE('
		CREATE TABLE [Lookup]
		(
			[Id]   Int           NOT NULL,
			[Type] NVarChar(255)     NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[AssociatedObjectId],
	[t1].[AssociationTypeId],
	[a_User].[Id]
FROM
	[Resource] [t1]
		LEFT JOIN [Lookup] [a_AssociationTypeCode] ON [t1].[AssociationTypeId] = [a_AssociationTypeCode].[Id]
		LEFT JOIN [User] [a_User] ON [a_AssociationTypeCode].[Type] = 'us' AND [a_User].[Id] = [t1].[AssociatedObjectId]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Lookup') IS NOT NULL)
	DROP TABLE [Lookup]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Resource') IS NOT NULL)
	DROP TABLE [Resource]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'User') IS NOT NULL)
	DROP TABLE [User]

