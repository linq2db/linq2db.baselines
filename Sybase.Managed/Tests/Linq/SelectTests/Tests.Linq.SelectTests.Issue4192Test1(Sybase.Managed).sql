BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue4192TableNotNullable') IS NOT NULL)
	DROP TABLE [Issue4192TableNotNullable]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue4192TableNotNullable') IS NULL)
	EXECUTE('
		CREATE TABLE [Issue4192TableNotNullable]
		(
			[Name]     NVarChar(255)     NULL,
			[ParentId] Int           NOT NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue4192TableNotNullable') IS NOT NULL)
	DROP TABLE [Issue4192TableNotNullable]

