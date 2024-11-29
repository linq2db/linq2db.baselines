BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'O1') IS NOT NULL)
	DROP TABLE [O1]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'O1') IS NULL)
	EXECUTE('
		CREATE TABLE [O1]
		(
			[DocEntry]    Int           NOT NULL,
			[BplId]       Int           NOT NULL,
			[ChaveAcesso] NVarChar(255)     NULL,
			[DocStatus]   NVarChar(255)     NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'O2') IS NOT NULL)
	DROP TABLE [O2]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'O2') IS NULL)
	EXECUTE('
		CREATE TABLE [O2]
		(
			[DocEntry]    Int           NOT NULL,
			[BplId]       Int           NOT NULL,
			[ChaveAcesso] NVarChar(255)     NULL,
			[DocStatus]   NVarChar(255)     NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'O3') IS NOT NULL)
	DROP TABLE [O3]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'O3') IS NULL)
	EXECUTE('
		CREATE TABLE [O3]
		(
			[DocEntry]    Int           NOT NULL,
			[BplId]       Int           NOT NULL,
			[ChaveAcesso] NVarChar(255)     NULL,
			[DocStatus]   NVarChar(255)     NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[doSap].[DocEntry],
	CASE
		WHEN [doSap].[DocStatus] = 'O' THEN 'Aberto'
		ELSE 'Fechado'
	END,
	CAST('Manual/Externo' AS NVarChar(255))
FROM
	[O1] [doSap]
UNION
SELECT
	[doSap_1].[DocEntry],
	CASE
		WHEN [doSap_1].[DocStatus] = 'O' THEN 'Aberto'
		ELSE 'Fechado'
	END,
	CAST('Manual/Externo' AS NVarChar(255))
FROM
	[O2] [doSap_1]
UNION
SELECT
	[doSap_2].[DocEntry],
	CASE
		WHEN [doSap_2].[DocStatus] = 'O' THEN 'Aberto'
		ELSE 'Fechado'
	END,
	CAST('Manual/Externo' AS NVarChar(255))
FROM
	[O3] [doSap_2]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'O3') IS NOT NULL)
	DROP TABLE [O3]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'O2') IS NOT NULL)
	DROP TABLE [O2]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'O1') IS NOT NULL)
	DROP TABLE [O1]

