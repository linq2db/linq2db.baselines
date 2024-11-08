BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[TransactionEntity]', N'U') IS NOT NULL)
	DROP TABLE [TransactionEntity]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[TransactionEntity]', N'U') IS NULL)
	CREATE TABLE [TransactionEntity]
	(
		[Id]      UniqueIdentifier NOT NULL,
		[ValidOn] DateTime         NOT NULL,

		CONSTRAINT [PK_TransactionEntity] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[LineEntity]', N'U') IS NOT NULL)
	DROP TABLE [LineEntity]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[LineEntity]', N'U') IS NULL)
	CREATE TABLE [LineEntity]
	(
		[Id]            UniqueIdentifier NOT NULL,
		[TransactionId] UniqueIdentifier NOT NULL,
		[Amount]        Decimal          NOT NULL,
		[Currency]      NVarChar(4000)       NULL,

		CONSTRAINT [PK_LineEntity] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

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
					(
						SELECT
							[a_Lines].[Currency]
						FROM
							[LineEntity] [a_Lines]
						WHERE
							[x].[Id] = [a_Lines].[TransactionId]
						INTERSECT
						SELECT
							[t1].[item] as [Currency]
						FROM
							(
								SELECT N'A' AS [item]
								UNION ALL
								SELECT N'B') [t1]
					) [t2]
			)
	) [m_1]
		INNER JOIN [LineEntity] [d] ON [m_1].[Id] = [d].[TransactionId]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

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
			(
				SELECT
					[a_Lines].[Currency]
				FROM
					[LineEntity] [a_Lines]
				WHERE
					[x].[Id] = [a_Lines].[TransactionId]
				INTERSECT
				SELECT
					[t1].[item] as [Currency]
				FROM
					(
						SELECT N'A' AS [item]
						UNION ALL
						SELECT N'B') [t1]
			) [t2]
	)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[LineEntity]', N'U') IS NOT NULL)
	DROP TABLE [LineEntity]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[TransactionEntity]', N'U') IS NOT NULL)
	DROP TABLE [TransactionEntity]

