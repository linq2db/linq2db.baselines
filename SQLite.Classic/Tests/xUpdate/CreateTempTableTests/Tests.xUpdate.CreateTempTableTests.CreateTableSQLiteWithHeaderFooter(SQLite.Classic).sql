-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [TempTable]

-- SQLite.Classic SQLite

/* THIS IS HEADER*/ CREATE TABLE temp.[TempTable]
(
	[ID]    INTEGER NOT NULL,
	[Field] INTEGER NOT NULL
)
/* THIS IS FOOTER*/

-- SQLite.Classic SQLite

INSERT INTO temp.[TempTable]
(
	[ID],
	[Field]
)
VALUES
(1,2)

-- SQLite.Classic SQLite

SELECT
	[t1].[ID],
	[t1].[Field]
FROM
	temp.[TempTable] [t1]

-- SQLite.Classic SQLite

DROP TABLE IF EXISTS temp.[TempTable]

