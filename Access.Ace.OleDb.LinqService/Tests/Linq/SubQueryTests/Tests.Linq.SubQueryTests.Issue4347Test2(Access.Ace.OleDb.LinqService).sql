BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [TransactionEntity]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [TransactionEntity]
(
	[Id]      Guid     NOT NULL,
	[ValidOn] DateTime NOT NULL,

	CONSTRAINT [PK_TransactionEntity] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [LineEntity]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [LineEntity]
(
	[Id]            Guid          NOT NULL,
	[TransactionId] Guid          NOT NULL,
	[Amount]        Decimal       NOT NULL,
	[Currency]      NVarChar(255)     NULL,

	CONSTRAINT [PK_LineEntity] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[Amount],
	[d].[Currency]
FROM
	(
		SELECT DISTINCT
			[x].[Id]
		FROM
			[TransactionEntity] [x]
		WHERE
			EXISTS(
				SELECT
					*
				FROM
					[LineEntity] [a_Lines]
				WHERE
					[x].[Id] = [a_Lines].[TransactionId] AND EXISTS(
						SELECT
							*
						FROM
							(
								SELECT 'A' AS [item]
								UNION ALL
								SELECT 'B') [t1]
						WHERE
							[a_Lines].[Currency] = [t1].[item] OR [a_Lines].[Currency] IS NULL AND [t1].[item] IS NULL
					)
			)
	) [m_1]
		INNER JOIN [LineEntity] [d] ON ([m_1].[Id] = [d].[TransactionId])

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [LineEntity]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [TransactionEntity]

