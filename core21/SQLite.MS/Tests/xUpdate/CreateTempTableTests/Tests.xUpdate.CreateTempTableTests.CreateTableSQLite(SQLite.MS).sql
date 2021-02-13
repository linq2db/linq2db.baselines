BeforeExecute
-- SQLite.MS SQLite

CREATE TEMPORARY TABLE [#TempTable]
(
	[ID]    INTEGER NOT NULL,
	[Field] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [#TempTable]
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
	[#TempTable] [t1]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE [#TempTable]

