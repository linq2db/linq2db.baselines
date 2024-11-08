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

INSERT INTO [IdentityOnlyField]

)
SELECT

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'IdentityOnlyField') IS NOT NULL)
	DROP TABLE [IdentityOnlyField]

