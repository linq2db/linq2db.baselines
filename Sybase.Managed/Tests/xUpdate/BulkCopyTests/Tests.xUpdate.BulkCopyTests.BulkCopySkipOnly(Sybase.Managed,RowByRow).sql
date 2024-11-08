BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'SkipOnlyField') IS NOT NULL)
	DROP TABLE [SkipOnlyField]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'SkipOnlyField') IS NULL)
	EXECUTE('
		CREATE TABLE [SkipOnlyField]
		(
			[Id] Int     NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [SkipOnlyField] VALUES ()

BeforeExecute
-- Sybase.Managed Sybase

SELECT TOP 2
	[t1].[Id]
FROM
	[SkipOnlyField] [t1]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'SkipOnlyField') IS NOT NULL)
	DROP TABLE [SkipOnlyField]

