BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TEMPORARY TABLE temp.[#TempTable]
(
	[ID]    INTEGER NOT NULL,
	[Field] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

INSERT INTO temp.[#TempTable]
(
	[ID],
	[Field]
)
VALUES
(1,2)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[ID],
	[t1].[Field]
FROM
	temp.[#TempTable] [t1]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS temp.[#TempTable]

