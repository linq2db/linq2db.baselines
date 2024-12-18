BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [O1]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [O1]
(
	[DocEntry]    Int           NOT NULL,
	[BplId]       Int           NOT NULL,
	[ChaveAcesso] NVarChar(255)     NULL,
	[DocStatus]   NVarChar(255)     NULL
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [O2]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [O2]
(
	[DocEntry]    Int           NOT NULL,
	[BplId]       Int           NOT NULL,
	[ChaveAcesso] NVarChar(255)     NULL,
	[DocStatus]   NVarChar(255)     NULL
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [O3]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [O3]
(
	[DocEntry]    Int           NOT NULL,
	[BplId]       Int           NOT NULL,
	[ChaveAcesso] NVarChar(255)     NULL,
	[DocStatus]   NVarChar(255)     NULL
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	[doSap].[DocEntry],
	IIF([doSap].[DocStatus] = 'O' AND [doSap].[DocStatus] IS NOT NULL, 'Aberto', 'Fechado'),
	CStr('Manual/Externo')
FROM
	[O1] [doSap]
UNION
SELECT
	[doSap_1].[DocEntry],
	IIF([doSap_1].[DocStatus] = 'O' AND [doSap_1].[DocStatus] IS NOT NULL, 'Aberto', 'Fechado'),
	CStr('Manual/Externo')
FROM
	[O2] [doSap_1]
UNION
SELECT
	[doSap_2].[DocEntry],
	IIF([doSap_2].[DocStatus] = 'O' AND [doSap_2].[DocStatus] IS NOT NULL, 'Aberto', 'Fechado'),
	CStr('Manual/Externo')
FROM
	[O3] [doSap_2]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [O3]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [O2]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [O1]

