﻿BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE [DETAIL]
(
	[ID]         INTEGER       NOT NULL,
	[TYP_STATUS] INTEGER       NOT NULL,
	[NR]         NVarChar(255) NOT NULL,
	[DATUM]      DateTime2     NOT NULL,

	CONSTRAINT [PK_DETAIL] PRIMARY KEY ([ID])
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE [STATUS_DATA]
(
	[STATUS_TYPE_ID] INTEGER       NOT NULL,
	[NR]             NVarChar(255) NOT NULL,

	CONSTRAINT [PK_STATUS_DATA] PRIMARY KEY ([STATUS_TYPE_ID], [NR])
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE [CASH]
(
	[ID_DETAIL] INTEGER         NOT NULL,
	[ID_TEXT]   INTEGER         NOT NULL,
	[Fee]       Decimal(29, 10) NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

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
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [CASH]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [STATUS_DATA]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [DETAIL]

