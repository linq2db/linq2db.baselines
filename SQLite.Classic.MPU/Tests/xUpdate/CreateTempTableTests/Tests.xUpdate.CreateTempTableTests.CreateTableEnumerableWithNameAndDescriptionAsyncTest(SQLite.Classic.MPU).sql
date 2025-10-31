-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS temp.[TempTable]

-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TEMPORARY TABLE IF NOT EXISTS temp.[TempTable]
(
	[Name] NVarChar(20) NOT NULL
)

-- SQLite.Classic.MPU SQLite.Classic SQLite

INSERT INTO temp.[TempTable]
(
	[Name]
)
VALUES
('John')

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t].[Name]
FROM
	[Person] [p]
		INNER JOIN temp.[TempTable] [t] ON [p].[FirstName] = [t].[Name]

-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS temp.[TempTable]

