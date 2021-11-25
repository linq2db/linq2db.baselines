BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

CREATE TABLE [O1]
(
	[DocEntry]    Int            NOT NULL,
	[BplId]       Int            NOT NULL,
	[ChaveAcesso] NVarChar(4000)     NULL,
	[DocStatus]   NVarChar(4000)     NULL
)

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

CREATE TABLE [O2]
(
	[DocEntry]    Int            NOT NULL,
	[BplId]       Int            NOT NULL,
	[ChaveAcesso] NVarChar(4000)     NULL,
	[DocStatus]   NVarChar(4000)     NULL
)

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

CREATE TABLE [O3]
(
	[DocEntry]    Int            NOT NULL,
	[BplId]       Int            NOT NULL,
	[ChaveAcesso] NVarChar(4000)     NULL,
	[DocStatus]   NVarChar(4000)     NULL
)

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

SELECT
	[doSap].[DocEntry],
	IIF([doSap].[DocStatus] = N'O', N'Aberto', N'Fechado'),
	N'Manual/Externo'
FROM
	[O1] [doSap]
UNION
SELECT
	[doSap_1].[DocEntry],
	IIF([doSap_1].[DocStatus] = N'O', N'Aberto', N'Fechado'),
	N'Manual/Externo'
FROM
	[O2] [doSap_1]
UNION
SELECT
	[doSap_2].[DocEntry],
	IIF([doSap_2].[DocStatus] = N'O', N'Aberto', N'Fechado'),
	N'Manual/Externo'
FROM
	[O3] [doSap_2]

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

DROP TABLE IF EXISTS [O3]

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

DROP TABLE IF EXISTS [O2]

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

DROP TABLE IF EXISTS [O1]

