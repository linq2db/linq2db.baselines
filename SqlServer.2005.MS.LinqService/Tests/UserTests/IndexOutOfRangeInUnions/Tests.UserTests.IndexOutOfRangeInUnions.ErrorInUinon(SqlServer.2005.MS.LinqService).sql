BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[O1]', N'U') IS NOT NULL)
	DROP TABLE [O1]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[O1]', N'U') IS NULL)
	CREATE TABLE [O1]
	(
		[DocEntry]    Int            NOT NULL,
		[BplId]       Int            NOT NULL,
		[ChaveAcesso] NVarChar(4000)     NULL,
		[DocStatus]   NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[O2]', N'U') IS NOT NULL)
	DROP TABLE [O2]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[O2]', N'U') IS NULL)
	CREATE TABLE [O2]
	(
		[DocEntry]    Int            NOT NULL,
		[BplId]       Int            NOT NULL,
		[ChaveAcesso] NVarChar(4000)     NULL,
		[DocStatus]   NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[O3]', N'U') IS NOT NULL)
	DROP TABLE [O3]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[O3]', N'U') IS NULL)
	CREATE TABLE [O3]
	(
		[DocEntry]    Int            NOT NULL,
		[BplId]       Int            NOT NULL,
		[ChaveAcesso] NVarChar(4000)     NULL,
		[DocStatus]   NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[doSap].[DocEntry],
	CASE
		WHEN [doSap].[DocStatus] = N'O' THEN N'Aberto'
		ELSE N'Fechado'
	END,
	N'Manual/Externo'
FROM
	[O1] [doSap]
UNION
SELECT
	[doSap_1].[DocEntry],
	CASE
		WHEN [doSap_1].[DocStatus] = N'O' THEN N'Aberto'
		ELSE N'Fechado'
	END,
	N'Manual/Externo'
FROM
	[O2] [doSap_1]
UNION
SELECT
	[doSap_2].[DocEntry],
	CASE
		WHEN [doSap_2].[DocStatus] = N'O' THEN N'Aberto'
		ELSE N'Fechado'
	END,
	N'Manual/Externo'
FROM
	[O3] [doSap_2]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[O3]', N'U') IS NOT NULL)
	DROP TABLE [O3]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[O2]', N'U') IS NOT NULL)
	DROP TABLE [O2]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[O1]', N'U') IS NOT NULL)
	DROP TABLE [O1]

