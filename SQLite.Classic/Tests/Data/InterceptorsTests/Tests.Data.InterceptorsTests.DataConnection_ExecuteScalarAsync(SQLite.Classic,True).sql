-- SQLite.Classic SQLite
CREATE TEMPORARY TABLE temp.[InterceptorsTestsTable]
(
	[ID] INTEGER  NOT NULL PRIMARY KEY AUTOINCREMENT
)

-- SQLite.Classic SQLite
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

-- SQLite.Classic SQLite
DROP TABLE IF EXISTS temp.[InterceptorsTestsTable]

