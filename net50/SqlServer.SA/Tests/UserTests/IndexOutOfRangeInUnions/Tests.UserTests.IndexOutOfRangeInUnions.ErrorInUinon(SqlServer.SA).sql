﻿BeforeExecute
-- SqlServer.SA SqlServer.2019

CREATE TABLE [O1]
(
	[DocEntry]    Int            NOT NULL,
	[BplId]       Int            NOT NULL,
	[ChaveAcesso] NVarChar(4000)     NULL,
	[DocStatus]   NVarChar(4000)     NULL
)

BeforeExecute
-- SqlServer.SA SqlServer.2019

CREATE TABLE [O2]
(
	[DocEntry]    Int            NOT NULL,
	[BplId]       Int            NOT NULL,
	[ChaveAcesso] NVarChar(4000)     NULL,
	[DocStatus]   NVarChar(4000)     NULL
)

BeforeExecute
-- SqlServer.SA SqlServer.2019

CREATE TABLE [O3]
(
	[DocEntry]    Int            NOT NULL,
	[BplId]       Int            NOT NULL,
	[ChaveAcesso] NVarChar(4000)     NULL,
	[DocStatus]   NVarChar(4000)     NULL
)

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[t1].[NumeroInterno],
	[t1].[StatusValor],
	[t1].[DescricaoStatus]
FROM
	(
		SELECT
			[doSap].[DocEntry] as [NumeroInterno],
			IIF([doSap].[DocStatus] = N'O', N'Aberto', N'Fechado') as [StatusValor],
			N'Manual/Externo' as [DescricaoStatus]
		FROM
			[O1] [doSap]
		UNION
		SELECT
			[doSap_1].[DocEntry] as [NumeroInterno],
			IIF([doSap_1].[DocStatus] = N'O', N'Aberto', N'Fechado') as [StatusValor],
			N'Manual/Externo' as [DescricaoStatus]
		FROM
			[O2] [doSap_1]
	) [t1]
UNION
SELECT
	[doSap_2].[DocEntry],
	IIF([doSap_2].[DocStatus] = N'O', N'Aberto', N'Fechado'),
	N'Manual/Externo'
FROM
	[O3] [doSap_2]

BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [O3]

BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [O2]

BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [O1]

