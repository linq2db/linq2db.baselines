BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [Item]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [Item]
(
	[Id]   Int           NOT NULL,
	[Text] NVarChar(255)     NULL,

	CONSTRAINT [PK_Item] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [ItemValue]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [ItemValue]
(
	[Id]     Int     NOT NULL,
	[ItemId] Int     NOT NULL,
	[Value]  Decimal NOT NULL
)

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[x_1].[Id],
	[x_1].[Text]
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
			) as [c1]
		FROM
			[Item] [x]
	) [x_1]
ORDER BY
	[x_1].[c1]

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [ItemValue]

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [Item]

