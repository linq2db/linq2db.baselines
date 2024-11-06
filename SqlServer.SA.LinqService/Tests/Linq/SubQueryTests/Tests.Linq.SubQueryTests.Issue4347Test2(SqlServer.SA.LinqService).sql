BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [TransactionEntity]

BeforeExecute
-- SqlServer.SA SqlServer.2019

IF (OBJECT_ID(N'[TransactionEntity]', N'U') IS NULL)
	CREATE TABLE [TransactionEntity]
	(
		[Id]      UniqueIdentifier NOT NULL,
		[ValidOn] DateTime2        NOT NULL,

		CONSTRAINT [PK_TransactionEntity] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [LineEntity]

BeforeExecute
-- SqlServer.SA SqlServer.2019

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
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [LineEntity]

BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [TransactionEntity]

