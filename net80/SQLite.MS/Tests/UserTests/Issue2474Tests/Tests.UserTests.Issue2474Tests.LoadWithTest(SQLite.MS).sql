BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [DETAIL]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [DETAIL]
(
	[ID]         INTEGER       NOT NULL,
	[TYP_STATUS] INTEGER       NOT NULL,
	[NR]         NVarChar(255) NOT NULL,
	[DATUM]      DateTime2     NOT NULL,

	CONSTRAINT [PK_DETAIL] PRIMARY KEY ([ID])
)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [STATUS_DATA]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [STATUS_DATA]
(
	[STATUS_TYPE_ID] INTEGER       NOT NULL,
	[NR]             NVarChar(255) NOT NULL,

	CONSTRAINT [PK_STATUS_DATA] PRIMARY KEY ([STATUS_TYPE_ID], [NR])
)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [CASH]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [CASH]
(
	[ID_DETAIL] INTEGER NOT NULL,
	[ID_TEXT]   INTEGER NOT NULL,
	[Fee]       Decimal NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[n].[ID],
	[n].[TYP_STATUS],
	[n].[NR],
	[n].[DATUM],
	[c_1].[STATUS_TYPE_ID],
	[c_1].[NR],
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				[CASH] [u]
			WHERE
				[u].[ID_DETAIL] = [n].[ID]
		)
			THEN 1
		ELSE 0
	END
FROM
	[DETAIL] [n]
		LEFT JOIN [STATUS_DATA] [c_1] ON [c_1].[STATUS_TYPE_ID] = [n].[TYP_STATUS] AND [c_1].[NR] = [n].[NR]
WHERE
	[n].[TYP_STATUS] = 2

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [CASH]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [STATUS_DATA]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [DETAIL]

