BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Item') IS NOT NULL)
	DROP TABLE [Item]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Item') IS NULL)
	EXECUTE('
		CREATE TABLE [Item]
		(
			[Id]   Int           NOT NULL,
			[Text] NVarChar(255)     NULL,

			CONSTRAINT [PK_Item] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'ItemValue') IS NOT NULL)
	DROP TABLE [ItemValue]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'ItemValue') IS NULL)
	EXECUTE('
		CREATE TABLE [ItemValue]
		(
			[Id]     Int     NOT NULL,
			[ItemId] Int     NOT NULL,
			[Value]  DECIMAL NOT NULL
		)
	')

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[m_1].[Id],
	[d].[Value]
FROM
	[Item] [m_1]
		INNER JOIN [ItemValue] [d] ON [m_1].[Id] = [d].[ItemId]

BeforeExecute
DisposeTransaction
BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[x].[Id],
	[x].[Text]
FROM
	[Item] [x]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'ItemValue') IS NOT NULL)
	DROP TABLE [ItemValue]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Item') IS NOT NULL)
	DROP TABLE [Item]

