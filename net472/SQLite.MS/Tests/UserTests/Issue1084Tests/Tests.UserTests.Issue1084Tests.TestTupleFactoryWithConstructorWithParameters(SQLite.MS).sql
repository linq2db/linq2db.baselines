BeforeExecute
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

DROP TABLE IF EXISTS [i1084_student]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [i1084_person]

