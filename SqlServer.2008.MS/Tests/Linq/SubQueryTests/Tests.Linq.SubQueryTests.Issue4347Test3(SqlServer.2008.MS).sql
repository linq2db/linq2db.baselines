﻿BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[TransactionEntity]', N'U') IS NOT NULL)
	DROP TABLE [TransactionEntity]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[TransactionEntity]', N'U') IS NULL)
	CREATE TABLE [TransactionEntity]
	(
		[Id]      UniqueIdentifier NOT NULL,
		[ValidOn] DateTime2        NOT NULL,

		CONSTRAINT [PK_TransactionEntity] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[LineEntity]', N'U') IS NOT NULL)
	DROP TABLE [LineEntity]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

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
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[Amount],
	[d].[Currency]
FROM
	[TransactionEntity] [m_1]
		INNER JOIN [LineEntity] [d] ON [m_1].[Id] = [d].[TransactionId]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[x].[Id],
	[x].[ValidOn]
FROM
	[TransactionEntity] [x]
ORDER BY
	[x].[ValidOn]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[LineEntity]', N'U') IS NOT NULL)
	DROP TABLE [LineEntity]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[TransactionEntity]', N'U') IS NOT NULL)
	DROP TABLE [TransactionEntity]

