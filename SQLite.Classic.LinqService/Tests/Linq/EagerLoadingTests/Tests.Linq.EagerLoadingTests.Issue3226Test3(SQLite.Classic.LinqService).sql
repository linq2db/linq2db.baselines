BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Item]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Item]
(
	[Id]   INTEGER       NOT NULL,
	[Text] NVarChar(255)     NULL,

	CONSTRAINT [PK_Item] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [ItemValue]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [ItemValue]
(
	[Id]     INTEGER NOT NULL,
	[ItemId] INTEGER NOT NULL,
	[Value]  Decimal NOT NULL
)

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[m_1].[Id],
	[d].[Value]
FROM
	[Item] [m_1]
		INNER JOIN [ItemValue] [d] ON [m_1].[Id] = [d].[ItemId]

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[x].[Id],
	[x].[Text]
FROM
	[Item] [x]
ORDER BY
	(
		SELECT
			SUM([a_Values].[Value])
		FROM
			[ItemValue] [a_Values]
		WHERE
			[x].[Id] = [a_Values].[ItemId]
	)

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [ItemValue]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Item]

