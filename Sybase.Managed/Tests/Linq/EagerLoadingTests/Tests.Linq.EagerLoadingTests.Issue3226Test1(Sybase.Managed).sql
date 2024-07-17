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
			[Value]  Decimal NOT NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[Text]
FROM
	(
		SELECT
			[x].[Id],
			[x].[Text],
			(
				SELECT
					SUM([a_Values].[Value])
				FROM
					[ItemValue] [a_Values]
				WHERE
					[x].[Id] = [a_Values].[ItemId]
			) as [SUM_1]
		FROM
			[Item] [x]
	) [t1]
ORDER BY
	[t1].[SUM_1]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'ItemValue') IS NOT NULL)
	DROP TABLE [ItemValue]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Item') IS NOT NULL)
	DROP TABLE [Item]

