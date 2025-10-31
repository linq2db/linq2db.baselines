-- SQLite.MS SQLite

DROP TABLE IF EXISTS temp.[TempTable]

-- SQLite.MS SQLite

CREATE TEMPORARY TABLE IF NOT EXISTS temp.[TempTable]
(
	[Name] NVarChar(20) NOT NULL
)

-- SQLite.MS SQLite

INSERT INTO temp.[TempTable]
(
	[Name]
)
VALUES
('John')

-- SQLite.MS SQLite

SELECT
	[t].[Name]
FROM
	[Person] [p]
		INNER JOIN temp.[TempTable] [t] ON [p].[FirstName] = [t].[Name]

-- SQLite.MS SQLite

DROP TABLE IF EXISTS temp.[TempTable]

