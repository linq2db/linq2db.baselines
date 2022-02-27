BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE [DETAIL]
(
	[ID]         INTEGER       NOT NULL,
	[TYP_STATUS] INTEGER       NOT NULL,
	[NR]         NVarChar(255) NOT NULL,
	[DATUM]      DateTime2     NOT NULL,

	CONSTRAINT [PK_DETAIL] PRIMARY KEY ([ID])
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE [STATUS_DATA]
(
	[STATUS_TYPE_ID] INTEGER       NOT NULL,
	[NR]             NVarChar(255) NOT NULL,

	CONSTRAINT [PK_STATUS_DATA] PRIMARY KEY ([STATUS_TYPE_ID], [NR])
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE [CASH]
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
	[c_1].[STATUS_TYPE_ID],
	[c_1].[NR],
	EXISTS(
		SELECT
			*
		FROM
			[CASH] [u]
		WHERE
			[u].[ID_DETAIL] = [n].[ID]
	)
FROM
	[DETAIL] [n]
		LEFT JOIN [STATUS_DATA] [c_1] ON [c_1].[STATUS_TYPE_ID] = [n].[TYP_STATUS] AND [c_1].[NR] = [n].[NR]
WHERE
	[n].[TYP_STATUS] = 2

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE [CASH]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE [STATUS_DATA]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE [DETAIL]

