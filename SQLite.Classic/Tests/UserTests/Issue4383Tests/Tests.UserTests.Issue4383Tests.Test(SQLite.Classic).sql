BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [PUMPLINES]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [PUMPLINES]
(
	[LINE_ID] INTEGER NOT NULL,

	CONSTRAINT [PK_PUMPLINES] PRIMARY KEY ([LINE_ID])
)

BeforeExecute
-- SQLite.Classic SQLite

INSERT INTO [PUMPLINES]
(
	[LINE_ID]
)
VALUES
(1),
(2)

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [PUMPLINE_CHAINS]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [PUMPLINE_CHAINS]
(
	[LINE_ID]  INTEGER NOT NULL,
	[CHAIN_ID] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.Classic SQLite

INSERT INTO [PUMPLINE_CHAINS]
(
	[LINE_ID],
	[CHAIN_ID]
)
VALUES
(1,11),
(2,22)

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [CHAINS]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [CHAINS]
(
	[CHAIN_ID] INTEGER NOT NULL,

	CONSTRAINT [PK_CHAINS] PRIMARY KEY ([CHAIN_ID])
)

BeforeExecute
-- SQLite.Classic SQLite

INSERT INTO [CHAINS]
(
	[CHAIN_ID]
)
VALUES
(11),
(22)

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [CHAINPOINTS]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [CHAINPOINTS]
(
	[CHAIN_ID] INTEGER NOT NULL,

	CONSTRAINT [PK_CHAINPOINTS] PRIMARY KEY ([CHAIN_ID])
)

BeforeExecute
-- SQLite.Classic SQLite

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
-- SQLite.Classic SQLite

SELECT
	[key_data_result].[CHAIN_ID],
	[key_data_result].[LINE_ID],
	[detail_1].[CHAIN_ID]
FROM
	(
		SELECT DISTINCT
			[a_Chain].[CHAIN_ID],
			[lw_PumpLineTest`2].[LINE_ID]
		FROM
			[PUMPLINES] [lw_PumpLineTest`2]
				INNER JOIN [PUMPLINE_CHAINS] [detail] ON [lw_PumpLineTest`2].[LINE_ID] = [detail].[LINE_ID]
				LEFT JOIN [CHAINS] [a_Chain] ON [detail].[CHAIN_ID] = [a_Chain].[CHAIN_ID]
	) [key_data_result]
		INNER JOIN [CHAINPOINTS] [detail_1] ON [key_data_result].[CHAIN_ID] = [detail_1].[CHAIN_ID]

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[lw_PumpLineTest`2].[LINE_ID],
	[detail].[LINE_ID],
	[detail].[CHAIN_ID],
	[a_Chain].[CHAIN_ID]
FROM
	[PUMPLINES] [lw_PumpLineTest`2]
		INNER JOIN [PUMPLINE_CHAINS] [detail] ON [lw_PumpLineTest`2].[LINE_ID] = [detail].[LINE_ID]
		LEFT JOIN [CHAINS] [a_Chain] ON [detail].[CHAIN_ID] = [a_Chain].[CHAIN_ID]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t1].[LINE_ID]
FROM
	[PUMPLINES] [t1]
ORDER BY
	[t1].[LINE_ID]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [CHAINPOINTS]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [CHAINS]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [PUMPLINE_CHAINS]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [PUMPLINES]

