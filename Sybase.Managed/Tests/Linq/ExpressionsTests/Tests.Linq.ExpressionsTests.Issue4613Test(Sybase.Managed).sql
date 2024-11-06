BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue4613Service') IS NOT NULL)
	DROP TABLE [Issue4613Service]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue4613Service') IS NULL)
	EXECUTE('
		CREATE TABLE [Issue4613Service]
		(
			[IdContract] Int NOT NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue4613Contract') IS NOT NULL)
	DROP TABLE [Issue4613Contract]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue4613Contract') IS NULL)
	EXECUTE('
		CREATE TABLE [Issue4613Contract]
		(
			[Id] Int NOT NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue4613Contract') IS NOT NULL)
	DROP TABLE [Issue4613Contract]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue4613Service') IS NOT NULL)
	DROP TABLE [Issue4613Service]

