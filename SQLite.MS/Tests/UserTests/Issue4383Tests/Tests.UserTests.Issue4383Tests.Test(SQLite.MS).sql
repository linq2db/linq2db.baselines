BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [PUMPLINES]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [PUMPLINES]
(
	[LINE_ID] INTEGER NOT NULL,

	CONSTRAINT [PK_PUMPLINES] PRIMARY KEY ([LINE_ID])
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [PUMPLINES]
(
	[LINE_ID]
)
VALUES
(1),
(2)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [PUMPLINE_CHAINS]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [PUMPLINE_CHAINS]
(
	[LINE_ID]  INTEGER NOT NULL,
	[CHAIN_ID] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [PUMPLINE_CHAINS]
(
	[LINE_ID],
	[CHAIN_ID]
)
VALUES
(1,11),
(2,22)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [CHAINS]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [CHAINS]
(
	[CHAIN_ID] INTEGER NOT NULL,

	CONSTRAINT [PK_CHAINS] PRIMARY KEY ([CHAIN_ID])
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [CHAINS]
(
	[CHAIN_ID]
)
VALUES
(11),
(22)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [CHAINPOINTS]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [CHAINPOINTS]
(
	[CHAIN_ID] INTEGER NOT NULL,

	CONSTRAINT [PK_CHAINPOINTS] PRIMARY KEY ([CHAIN_ID])
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [CHAINPOINTS]
(
	[CHAIN_ID]
)
VALUES
(11),
(22)

BeforeExecute
BeginTransaction(Serializable)
BeforeExecute
-- SQLite.MS SQLite

SELECT
	[m_1].[Id],
	[m_1].[Id_1],
	[d_1].[CHAIN_ID]
FROM
	(
		SELECT DISTINCT
			[a_Chain].[CHAIN_ID] as [Id],
			[t2].[Id] as [Id_1]
		FROM
			(
				SELECT DISTINCT
					[t1].[LINE_ID] as [Id]
				FROM
					[PUMPLINES] [t1]
			) [t2]
				INNER JOIN [PUMPLINE_CHAINS] [d] ON [t2].[Id] = [d].[LINE_ID]
				LEFT JOIN [CHAINS] [a_Chain] ON [d].[CHAIN_ID] = [a_Chain].[CHAIN_ID]
	) [m_1]
		INNER JOIN [CHAINPOINTS] [d_1] ON [m_1].[Id] = [d_1].[CHAIN_ID]

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[m_1].[LINE_ID],
	[d].[LINE_ID],
	[d].[CHAIN_ID],
	[a_Chain].[CHAIN_ID],
	[a_Chain].[CHAIN_ID]
FROM
	[PUMPLINES] [m_1]
		INNER JOIN [PUMPLINE_CHAINS] [d] ON [m_1].[LINE_ID] = [d].[LINE_ID]
		LEFT JOIN [CHAINS] [a_Chain] ON [d].[CHAIN_ID] = [a_Chain].[CHAIN_ID]
ORDER BY
	[m_1].[LINE_ID]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[LINE_ID],
	[t1].[LINE_ID]
FROM
	[PUMPLINES] [t1]
ORDER BY
	[t1].[LINE_ID]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [CHAINPOINTS]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [CHAINS]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [PUMPLINE_CHAINS]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [PUMPLINES]

