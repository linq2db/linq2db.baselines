BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue4620Table') IS NOT NULL)
	DROP TABLE [Issue4620Table]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue4620Table') IS NULL)
	EXECUTE('
		CREATE TABLE [Issue4620Table]
		(
			[Id]         Int     NOT NULL,
			[IdContract] Int         NULL,
			[IdClient]   Int         NULL,
			[Sum]        Decimal NOT NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [Issue4620Table]
(
	[Id],
	[IdContract],
	[IdClient],
	[Sum]
)
SELECT 1,NULL,1,0 UNION ALL
SELECT 2,2,NULL,0 UNION ALL
SELECT 3,NULL,NULL,0 UNION ALL
SELECT 4,2,1,0

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue4620Client') IS NOT NULL)
	DROP TABLE [Issue4620Client]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue4620Client') IS NULL)
	EXECUTE('
		CREATE TABLE [Issue4620Client]
		(
			[Id]   Int           NOT NULL,
			[Name] NVarChar(255)     NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [Issue4620Client]
(
	[Id],
	[Name]
)
SELECT 1,'Client 1' UNION ALL
SELECT 2,'Client 2'

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue4620Contract') IS NOT NULL)
	DROP TABLE [Issue4620Contract]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue4620Contract') IS NULL)
	EXECUTE('
		CREATE TABLE [Issue4620Contract]
		(
			[Id]       Int NOT NULL,
			[IdClient] Int NOT NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [Issue4620Contract]
(
	[Id],
	[IdClient]
)
SELECT 1,1 UNION ALL
SELECT 2,2

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[Name]
FROM
	(
		SELECT
			[b].[Id],
			[a_Client].[Name]
		FROM
			[Issue4620Table] [b]
				INNER JOIN [Issue4620Client] [a_Client] ON [b].[IdClient] = [a_Client].[Id]
		WHERE
			[b].[IdClient] IS NOT NULL
		UNION ALL
		SELECT
			[b_1].[Id],
			[a_Client_1].[Name]
		FROM
			[Issue4620Table] [b_1]
				INNER JOIN [Issue4620Contract] [a_Contract] ON [b_1].[IdContract] = [a_Contract].[Id]
				INNER JOIN [Issue4620Client] [a_Client_1] ON [a_Contract].[IdClient] = [a_Client_1].[Id]
		WHERE
			[b_1].[IdContract] IS NOT NULL
	) [t1]
ORDER BY
	[t1].[Id],
	[t1].[Name]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue4620Contract') IS NOT NULL)
	DROP TABLE [Issue4620Contract]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue4620Client') IS NOT NULL)
	DROP TABLE [Issue4620Client]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue4620Table') IS NOT NULL)
	DROP TABLE [Issue4620Table]

