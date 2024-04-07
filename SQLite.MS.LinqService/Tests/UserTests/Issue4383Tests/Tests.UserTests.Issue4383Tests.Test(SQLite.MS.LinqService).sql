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
DECLARE @Id  -- Int32
SET     @Id = 1

INSERT INTO [PUMPLINES]
(
	[LINE_ID]
)
VALUES
(
	@Id
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 2

INSERT INTO [PUMPLINES]
(
	[LINE_ID]
)
VALUES
(
	@Id
)

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
DECLARE @LineId  -- Int32
SET     @LineId = 1
DECLARE @ChainId  -- Int32
SET     @ChainId = 11

INSERT INTO [PUMPLINE_CHAINS]
(
	[LINE_ID],
	[CHAIN_ID]
)
VALUES
(
	@LineId,
	@ChainId
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @LineId  -- Int32
SET     @LineId = 2
DECLARE @ChainId  -- Int32
SET     @ChainId = 22

INSERT INTO [PUMPLINE_CHAINS]
(
	[LINE_ID],
	[CHAIN_ID]
)
VALUES
(
	@LineId,
	@ChainId
)

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
DECLARE @Id  -- Int32
SET     @Id = 11

INSERT INTO [CHAINS]
(
	[CHAIN_ID]
)
VALUES
(
	@Id
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 22

INSERT INTO [CHAINS]
(
	[CHAIN_ID]
)
VALUES
(
	@Id
)

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
DECLARE @ElementId  -- Int32
SET     @ElementId = 11

INSERT INTO [CHAINPOINTS]
(
	[CHAIN_ID]
)
VALUES
(
	@ElementId
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @ElementId  -- Int32
SET     @ElementId = 22

INSERT INTO [CHAINPOINTS]
(
	[CHAIN_ID]
)
VALUES
(
	@ElementId
)

BeforeExecute
-- SQLite.MS SQLite

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
-- SQLite.MS SQLite

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
-- SQLite.MS SQLite

SELECT
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

