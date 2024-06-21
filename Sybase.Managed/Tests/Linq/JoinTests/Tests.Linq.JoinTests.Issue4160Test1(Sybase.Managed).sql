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
BeginTransaction(RepeatableRead)
BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[m_1].[Code],
	[d].[Name]
FROM
	(
		SELECT DISTINCT
			[pe].[Code]
		FROM
			[Issue4160Person] [pe]
	) [m_1]
		INNER JOIN [Issue4160City] [d] ON ([d].[Code] = [m_1].[Code] OR [d].[Code] IS NULL AND [m_1].[Code] IS NULL)

BeforeExecute
DisposeTransaction
BeforeExecute
-- Sybase.Managed Sybase

SELECT DISTINCT
	[pe].[Code]
FROM
	[Issue4160Person] [pe]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue4160City') IS NOT NULL)
	DROP TABLE [Issue4160City]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue4160Person') IS NOT NULL)
	DROP TABLE [Issue4160Person]

