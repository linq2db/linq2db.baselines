BeforeExecute
-- SqlCe

DROP TABLE [O1]

BeforeExecute
-- SqlCe

CREATE TABLE [O1]
(
	[DocEntry]    Int           NOT NULL,
	[BplId]       Int           NOT NULL,
	[ChaveAcesso] NVarChar(255)     NULL,
	[DocStatus]   NVarChar(255)     NULL
)

BeforeExecute
-- SqlCe

DROP TABLE [O2]

BeforeExecute
-- SqlCe

CREATE TABLE [O2]
(
	[DocEntry]    Int           NOT NULL,
	[BplId]       Int           NOT NULL,
	[ChaveAcesso] NVarChar(255)     NULL,
	[DocStatus]   NVarChar(255)     NULL
)

BeforeExecute
-- SqlCe

DROP TABLE [O3]

BeforeExecute
-- SqlCe

CREATE TABLE [O3]
(
	[DocEntry]    Int           NOT NULL,
	[BplId]       Int           NOT NULL,
	[ChaveAcesso] NVarChar(255)     NULL,
	[DocStatus]   NVarChar(255)     NULL
)

BeforeExecute
-- SqlCe

SELECT
	[doSap].[DocEntry] as [NumeroInterno],
	CASE
		WHEN [doSap].[DocStatus] = 'O' AND [doSap].[DocStatus] IS NOT NULL
			THEN 'Aberto'
		ELSE 'Fechado'
	END as [StatusValor],
	CAST('Manual/Externo' AS NVarChar(255)) as [DescricaoStatus]
FROM
	[O1] [doSap]
UNION
SELECT
	[doSap_1].[DocEntry] as [NumeroInterno],
	CASE
		WHEN [doSap_1].[DocStatus] = 'O' AND [doSap_1].[DocStatus] IS NOT NULL
			THEN 'Aberto'
		ELSE 'Fechado'
	END as [StatusValor],
	CAST('Manual/Externo' AS NVarChar(255)) as [DescricaoStatus]
FROM
	[O2] [doSap_1]
UNION
SELECT
	[doSap_2].[DocEntry] as [NumeroInterno],
	CASE
		WHEN [doSap_2].[DocStatus] = 'O' AND [doSap_2].[DocStatus] IS NOT NULL
			THEN 'Aberto'
		ELSE 'Fechado'
	END as [StatusValor],
	CAST('Manual/Externo' AS NVarChar(255)) as [DescricaoStatus]
FROM
	[O3] [doSap_2]

BeforeExecute
-- SqlCe

DROP TABLE [O3]

BeforeExecute
-- SqlCe

DROP TABLE [O2]

BeforeExecute
-- SqlCe

DROP TABLE [O1]

