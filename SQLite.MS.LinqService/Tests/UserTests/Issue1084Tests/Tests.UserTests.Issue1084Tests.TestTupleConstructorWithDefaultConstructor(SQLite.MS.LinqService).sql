﻿BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [i1084_person]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [i1084_person]
(
	[Id]            INTEGER NOT NULL,
	[Number]        INTEGER NOT NULL,
	[StatusBitmask] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [i1084_student]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [i1084_student]
(
	[Id]            INTEGER       NOT NULL,
	[Number]        NVarChar(255)     NULL,
	[StatusBitmask] INTEGER       NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[k_1].[StatusBitmask] & 128,
	[g_1].[StatusBitmask] & 128
FROM
	[i1084_person] [k_1]
		LEFT JOIN [i1084_student] [g_1] ON [k_1].[Id] = [g_1].[Id] AND CAST([k_1].[Number] AS NVarChar(11)) = [g_1].[Number]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [i1084_student]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [i1084_person]

