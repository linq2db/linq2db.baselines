-- SQLite.Classic SQLite

CREATE TABLE [InterceptorsTestsTable]
(
	[ID] INTEGER  NOT NULL PRIMARY KEY AUTOINCREMENT
)

-- SQLite.Classic SQLite

INSERT INTO [InterceptorsTestsTable]
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

DROP TABLE IF EXISTS [InterceptorsTestsTable]

