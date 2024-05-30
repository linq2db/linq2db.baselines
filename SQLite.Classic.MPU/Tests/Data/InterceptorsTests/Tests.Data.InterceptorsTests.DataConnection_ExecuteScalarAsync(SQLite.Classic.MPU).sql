BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite (asynchronously)

CREATE TEMPORARY TABLE temp.[InterceptorsTestsTable]
(
	[ID] INTEGER  NOT NULL PRIMARY KEY AUTOINCREMENT
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite (asynchronously)

INSERT INTO temp.[InterceptorsTestsTable]
(
	[ID]
)
VALUES
(
	1
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite (asynchronously)

SELECT last_insert_rowid()

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite (asynchronously)

DROP TABLE IF EXISTS temp.[InterceptorsTestsTable]

