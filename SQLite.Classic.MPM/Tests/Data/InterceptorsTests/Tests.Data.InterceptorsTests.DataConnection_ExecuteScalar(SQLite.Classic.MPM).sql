-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TEMPORARY TABLE temp.[InterceptorsTestsTable]
(
	[ID] INTEGER  NOT NULL PRIMARY KEY AUTOINCREMENT
)

-- SQLite.Classic.MPM SQLite.Classic SQLite

INSERT INTO temp.[InterceptorsTestsTable]
(
	[ID]
)
VALUES
(
	1
)

-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT last_insert_rowid()

-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS temp.[InterceptorsTestsTable]

