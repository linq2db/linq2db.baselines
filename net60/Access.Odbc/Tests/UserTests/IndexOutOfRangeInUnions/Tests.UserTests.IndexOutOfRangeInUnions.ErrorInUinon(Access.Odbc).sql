BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [O1]
(
	[DocEntry]    Int           NOT NULL,
	[BplId]       Int           NOT NULL,
	[ChaveAcesso] NVarChar(255)     NULL,
	[DocStatus]   NVarChar(255)     NULL
)

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [O2]
(
	[DocEntry]    Int           NOT NULL,
	[BplId]       Int           NOT NULL,
	[ChaveAcesso] NVarChar(255)     NULL,
	[DocStatus]   NVarChar(255)     NULL
)

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [O3]
(
	[DocEntry]    Int           NOT NULL,
	[BplId]       Int           NOT NULL,
	[ChaveAcesso] NVarChar(255)     NULL,
	[DocStatus]   NVarChar(255)     NULL
)

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[t1].[NumeroInterno],
	[t1].[StatusValor],
	[t1].[DescricaoStatus]
FROM
	(
		SELECT
			[doSap].[DocEntry] as [NumeroInterno],
			Iif([doSap].[DocStatus] = 'O', 'Aberto', 'Fechado') as [StatusValor],
			'Manual/Externo' as [DescricaoStatus]
		FROM
			[O1] [doSap]
		UNION
		SELECT
			[doSap_1].[DocEntry] as [NumeroInterno],
			Iif([doSap_1].[DocStatus] = 'O', 'Aberto', 'Fechado') as [StatusValor],
			'Manual/Externo' as [DescricaoStatus]
		FROM
			[O2] [doSap_1]
	) [t1]
UNION
SELECT
	[doSap_2].[DocEntry],
	Iif([doSap_2].[DocStatus] = 'O', 'Aberto', 'Fechado'),
	'Manual/Externo'
FROM
	[O3] [doSap_2]

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [O3]

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [O2]

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [O1]

