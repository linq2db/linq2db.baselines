BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

CREATE TEMPORARY TABLE temp.[#TempTable]
(
	[ID]    INTEGER NOT NULL,
	[Field] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

INSERT INTO temp.[#TempTable]
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
	temp.[#TempTable] [t1]

BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

DROP TABLE IF EXISTS temp.[#TempTable]

