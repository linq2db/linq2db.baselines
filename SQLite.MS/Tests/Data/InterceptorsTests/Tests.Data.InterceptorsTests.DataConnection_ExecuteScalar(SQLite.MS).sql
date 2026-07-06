-- SQLite.MS SQLite

CREATE TEMPORARY TABLE temp.[InterceptorsTestsTable]
(
	[ID] INTEGER  NOT NULL PRIMARY KEY AUTOINCREMENT
)

-- SQLite.MS SQLite

INSERT INTO temp.[InterceptorsTestsTable]
(
	[ID]
)
VALUES
(
	1
)
;
SELECT
	last_insert_rowid()

-- SQLite.MS SQLite

DROP TABLE IF EXISTS temp.[InterceptorsTestsTable]

