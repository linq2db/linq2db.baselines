-- SQLite.MS SQLite

DROP TABLE IF EXISTS [TempTable]

-- SQLite.MS SQLite

/* THIS IS HEADER*/ CREATE TABLE [TempTable]
(
	[Name] NVarChar(20) NOT NULL
)
/* THIS IS FOOTER*/

-- SQLite.MS SQLite

INSERT INTO [TempTable]
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
		INNER JOIN [TempTable] [t] ON [p].[FirstName] = [t].[Name]

-- SQLite.MS SQLite

DROP TABLE IF EXISTS [TempTable]

