﻿BeforeExecute
-- SQLite.Classic SQLite

CREATE TEMPORARY TABLE [#TempTable]
(
	[ID]    INTEGER NOT NULL,
	[Field] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.Classic SQLite

INSERT INTO [#TempTable]
(
	[ID],
	[Field]
)
VALUES
(1,2)

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t1].[ID],
	[t1].[Field]
FROM
	[#TempTable] [t1]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [#TempTable]

