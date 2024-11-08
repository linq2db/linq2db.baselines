BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'IdentityOnlyField') IS NOT NULL)
	DROP TABLE [IdentityOnlyField]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'IdentityOnlyField') IS NULL)
	EXECUTE('
		CREATE TABLE [IdentityOnlyField]
		(
			[Id] Int IDENTITY NOT NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [IdentityOnlyField] VALUES ()

BeforeExecute
-- Sybase.Managed Sybase

SELECT TOP 2
	[t1].[Id]
FROM
	[IdentityOnlyField] [t1]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'IdentityOnlyField') IS NOT NULL)
	DROP TABLE [IdentityOnlyField]

