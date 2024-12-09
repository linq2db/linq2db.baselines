BeforeExecute
-- SqlCe

DROP TABLE [TransactionEntity]

BeforeExecute
-- SqlCe

CREATE TABLE [TransactionEntity]
(
	[Id]      UNIQUEIDENTIFIER NOT NULL,
	[ValidOn] DateTime         NOT NULL,

	CONSTRAINT [PK_TransactionEntity] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe

DROP TABLE [LineEntity]

BeforeExecute
-- SqlCe

CREATE TABLE [LineEntity]
(
	[Id]            UNIQUEIDENTIFIER NOT NULL,
	[TransactionId] UNIQUEIDENTIFIER NOT NULL,
	[Amount]        Decimal          NOT NULL,
	[Currency]      NVarChar(255)        NULL,

	CONSTRAINT [PK_LineEntity] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe

SELECT
	[m_1].[Id],
	[d].[Id] as [Id_1],
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
								SELECT 'B' AS [item]) [t1]
						WHERE
							[a_Lines].[Currency] = [t1].[item] OR [a_Lines].[Currency] IS NULL AND [t1].[item] IS NULL
					)
			)
	) [m_1]
		INNER JOIN [LineEntity] [d] ON [m_1].[Id] = [d].[TransactionId]

BeforeExecute
-- SqlCe

SELECT
	[x].[Id],
	[x].[ValidOn]
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
						SELECT 'B' AS [item]) [t1]
				WHERE
					[a_Lines].[Currency] = [t1].[item] OR [a_Lines].[Currency] IS NULL AND [t1].[item] IS NULL
			)
	)

BeforeExecute
-- SqlCe

DROP TABLE [LineEntity]

BeforeExecute
-- SqlCe

DROP TABLE [TransactionEntity]

