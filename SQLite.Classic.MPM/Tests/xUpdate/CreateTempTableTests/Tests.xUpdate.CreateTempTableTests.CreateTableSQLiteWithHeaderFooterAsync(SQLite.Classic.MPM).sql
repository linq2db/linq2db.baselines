-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [TempTable]

-- SQLite.Classic.MPM SQLite.Classic SQLite

/* THIS IS ASYNC HEADER*/ CREATE TABLE temp.[TempTable]
(
	[ID]    INTEGER NOT NULL,
	[Field] INTEGER NOT NULL
)
/* THIS IS ASYNC FOOTER*/

-- SQLite.Classic.MPM SQLite.Classic SQLite

INSERT INTO temp.[TempTable]
(
	[ID],
	[Field]
)
VALUES
(1,2)

-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t1].[ID],
	[t1].[Field]
FROM
	temp.[TempTable] [t1]

-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS temp.[TempTable]

