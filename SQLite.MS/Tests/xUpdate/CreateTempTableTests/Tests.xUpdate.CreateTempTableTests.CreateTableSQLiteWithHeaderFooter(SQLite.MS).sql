BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [TempTable]

BeforeExecute
-- SQLite.MS SQLite

/* THIS IS HEADER*/ CREATE TABLE temp.TempTable
(
	[ID]    INTEGER NOT NULL,
	[Field] INTEGER NOT NULL
)
/* THIS IS FOOTER*/

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO temp.[TempTable]
(
	[ID],
	[Field]
)
VALUES
(1,2)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[ID],
	[t1].[Field]
FROM
	temp.[TempTable] [t1]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS temp.[TempTable]

