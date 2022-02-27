BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE [i1084_person]
(
	[Id]            INTEGER NOT NULL,
	[Number]        INTEGER NOT NULL,
	[StatusBitmask] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE [i1084_student]
(
	[Id]            INTEGER       NOT NULL,
	[Number]        NVarChar(255)     NULL,
	[StatusBitmask] INTEGER       NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[k_1].[StatusBitmask],
	[joinedTable].[StatusBitmask]
FROM
	[i1084_person] [k_1]
		LEFT JOIN [i1084_student] [joinedTable] ON ([k_1].[Id] = [joinedTable].[Id] AND Cast([k_1].[Number] as NVarChar(11)) = [joinedTable].[Number])

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE [i1084_student]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE [i1084_person]

