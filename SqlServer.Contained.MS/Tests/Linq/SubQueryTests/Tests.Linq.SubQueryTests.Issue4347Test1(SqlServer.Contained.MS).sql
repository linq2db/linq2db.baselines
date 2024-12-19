﻿BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [TransactionEntity]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

IF (OBJECT_ID(N'[TransactionEntity]', N'U') IS NULL)
	CREATE TABLE [TransactionEntity]
	(
		[Id]      UniqueIdentifier NOT NULL,
		[ValidOn] DateTime2        NOT NULL,

		CONSTRAINT [PK_TransactionEntity] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [LineEntity]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

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
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

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
					[a_Lines].[Currency]
				FROM
					[LineEntity] [a_Lines]
				WHERE
					[x].[Id] = [a_Lines].[TransactionId]
				INTERSECT
				SELECT
					[t1].[item]
				FROM
					(VALUES
						(N'A'), (N'B')
					) [t1]([item])
			)
	) [m_1]
		INNER JOIN [LineEntity] [d] ON [m_1].[Id] = [d].[TransactionId]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[x].[Id],
	[x].[ValidOn]
FROM
	[TransactionEntity] [x]
WHERE
	EXISTS(
		SELECT
			[a_Lines].[Currency]
		FROM
			[LineEntity] [a_Lines]
		WHERE
			[x].[Id] = [a_Lines].[TransactionId]
		INTERSECT
		SELECT
			[t1].[item]
		FROM
			(VALUES
				(N'A'), (N'B')
			) [t1]([item])
	)
ORDER BY
	[x].[ValidOn]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [LineEntity]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [TransactionEntity]

