BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [TransactionEntity]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [TransactionEntity]
(
	[Id]      Guid     NOT NULL,
	[ValidOn] DateTime NOT NULL,

	CONSTRAINT [PK_TransactionEntity] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [LineEntity]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [LineEntity]
(
	[Id]            Guid          NOT NULL,
	[TransactionId] Guid          NOT NULL,
	[Amount]        Decimal       NOT NULL,
	[Currency]      NVarChar(255)     NULL,

	CONSTRAINT [PK_LineEntity] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[Amount],
	[d].[Currency]
FROM
	[TransactionEntity] [m_1]
		INNER JOIN [LineEntity] [d] ON ([m_1].[Id] = [d].[TransactionId])

BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	[x].[Id],
	[x].[ValidOn]
FROM
	[TransactionEntity] [x]
ORDER BY
	[x].[ValidOn]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [LineEntity]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [TransactionEntity]

