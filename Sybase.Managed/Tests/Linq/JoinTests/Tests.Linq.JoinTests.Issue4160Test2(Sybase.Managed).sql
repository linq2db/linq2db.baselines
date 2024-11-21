BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue4160Person') IS NOT NULL)
	DROP TABLE [Issue4160Person]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue4160Person') IS NULL)
	EXECUTE('
		CREATE TABLE [Issue4160Person]
		(
			[Code] NVarChar(255)     NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [Issue4160Person]
(
	[Code]
)
SELECT 'SD' UNION ALL
SELECT 'SD' UNION ALL
SELECT 'SH'

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue4160City') IS NOT NULL)
	DROP TABLE [Issue4160City]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue4160City') IS NULL)
	EXECUTE('
		CREATE TABLE [Issue4160City]
		(
			[Code] NVarChar(255)     NULL,
			[Name] NVarChar(255)     NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [Issue4160City]
(
	[Code],
	[Name]
)
SELECT 'SD','SYDNEY' UNION ALL
SELECT 'SD','SUNDAY' UNION ALL
SELECT 'SH','SYDHIP'

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue4160City') IS NOT NULL)
	DROP TABLE [Issue4160City]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue4160Person') IS NOT NULL)
	DROP TABLE [Issue4160Person]

