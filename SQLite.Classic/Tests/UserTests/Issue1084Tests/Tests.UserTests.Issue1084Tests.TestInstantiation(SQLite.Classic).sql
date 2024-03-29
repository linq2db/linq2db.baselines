﻿BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [i1084_person]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [i1084_person]
(
	[Id]            INTEGER NOT NULL,
	[Number]        INTEGER NOT NULL,
	[StatusBitmask] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.Classic SQLite

INSERT INTO [i1084_person]
(
	[Id],
	[Number],
	[StatusBitmask]
)
VALUES
(1,1,0),
(2,2,0)

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [i1084_student]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [i1084_student]
(
	[Id]            INTEGER       NOT NULL,
	[Number]        NVarChar(255)     NULL,
	[StatusBitmask] INTEGER       NOT NULL
)

BeforeExecute
-- SQLite.Classic SQLite

INSERT INTO [i1084_student]
(
	[Id],
	[Number],
	[StatusBitmask]
)
VALUES
(1,'1',0),
(2,'2',0)

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[k_1].[Id],
	[k_1].[Number],
	[k_1].[StatusBitmask],
	[joinedTable].[StatusBitmask]
FROM
	[i1084_person] [k_1]
		LEFT JOIN [i1084_student] [joinedTable] ON [k_1].[Id] = [joinedTable].[Id] AND Cast([k_1].[Number] as NVarChar(11)) = [joinedTable].[Number]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [i1084_student]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [i1084_person]

