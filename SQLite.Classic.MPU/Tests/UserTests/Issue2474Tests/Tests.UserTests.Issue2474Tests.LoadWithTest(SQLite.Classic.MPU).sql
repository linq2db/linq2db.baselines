BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [DETAIL]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [DETAIL]
(
	[ID]         INTEGER       NOT NULL,
	[TYP_STATUS] INTEGER       NOT NULL,
	[NR]         NVarChar(255) NOT NULL,
	[DATUM]      DateTime2     NOT NULL,

	CONSTRAINT [PK_DETAIL] PRIMARY KEY ([ID])
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [STATUS_DATA]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [STATUS_DATA]
(
	[STATUS_TYPE_ID] INTEGER       NOT NULL,
	[NR]             NVarChar(255) NOT NULL,

	CONSTRAINT [PK_STATUS_DATA] PRIMARY KEY ([STATUS_TYPE_ID], [NR])
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [CASH]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [CASH]
(
	[ID_DETAIL] INTEGER NOT NULL,
	[ID_TEXT]   INTEGER NOT NULL,
	[Fee]       Decimal NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[n].[ID],
	[n].[TYP_STATUS],
	[n].[NR],
	[n].[DATUM],
	EXISTS(
		SELECT
			*
		FROM
			[CASH] [u]
		WHERE
			[u].[ID_DETAIL] = [n].[ID]
	),
	[a_Status].[STATUS_TYPE_ID],
	[a_Status].[NR]
FROM
	[DETAIL] [n]
		LEFT JOIN [STATUS_DATA] [a_Status] ON [a_Status].[STATUS_TYPE_ID] = [n].[TYP_STATUS] AND [a_Status].[NR] = [n].[NR]
WHERE
	[n].[TYP_STATUS] = 2

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [CASH]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [STATUS_DATA]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [DETAIL]

