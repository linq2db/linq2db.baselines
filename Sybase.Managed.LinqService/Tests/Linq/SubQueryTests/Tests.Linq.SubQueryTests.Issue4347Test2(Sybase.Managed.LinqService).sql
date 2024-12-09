BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'TransactionEntity') IS NOT NULL)
	DROP TABLE [TransactionEntity]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'TransactionEntity') IS NULL)
	EXECUTE('
		CREATE TABLE [TransactionEntity]
		(
			[Id]      VARCHAR(36) NOT NULL,
			[ValidOn] DateTime    NOT NULL,

			CONSTRAINT [PK_TransactionEntity] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'LineEntity') IS NOT NULL)
	DROP TABLE [LineEntity]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'LineEntity') IS NULL)
	EXECUTE('
		CREATE TABLE [LineEntity]
		(
			[Id]            VARCHAR(36)   NOT NULL,
			[TransactionId] VARCHAR(36)   NOT NULL,
			[Amount]        Decimal       NOT NULL,
			[Currency]      NVarChar(255)     NULL,

			CONSTRAINT [PK_LineEntity] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

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
		INNER JOIN [LineEntity] [d] ON [m_1].[Id] = [d].[TransactionId]

BeforeExecute
-- Sybase.Managed Sybase

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
						SELECT 'B') [t1]
				WHERE
					[a_Lines].[Currency] = [t1].[item] OR [a_Lines].[Currency] IS NULL AND [t1].[item] IS NULL
			)
	)

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'LineEntity') IS NOT NULL)
	DROP TABLE [LineEntity]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'TransactionEntity') IS NOT NULL)
	DROP TABLE [TransactionEntity]

