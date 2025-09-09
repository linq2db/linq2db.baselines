﻿BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [TempTable]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite (asynchronously)

/* THIS IS ASYNC HEADER*/ CREATE TABLE temp.TempTable
(
	[ID]    INTEGER NOT NULL,
	[Field] INTEGER NOT NULL
)
/* THIS IS ASYNC FOOTER*/

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite (asynchronously)

INSERT INTO temp.[TempTable]
(
	[ID],
	[Field]
)
VALUES
(1,2)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t1].[ID],
	[t1].[Field]
FROM
	temp.[TempTable] [t1]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite (asynchronously)

DROP TABLE IF EXISTS temp.[TempTable]

