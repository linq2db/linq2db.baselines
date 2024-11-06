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

IF (OBJECT_ID(N'LineEntity') IS NOT NULL)
	DROP TABLE [LineEntity]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'TransactionEntity') IS NOT NULL)
	DROP TABLE [TransactionEntity]

