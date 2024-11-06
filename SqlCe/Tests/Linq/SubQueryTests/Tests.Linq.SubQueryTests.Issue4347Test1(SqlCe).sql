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

DROP TABLE [LineEntity]

BeforeExecute
-- SqlCe

DROP TABLE [TransactionEntity]

