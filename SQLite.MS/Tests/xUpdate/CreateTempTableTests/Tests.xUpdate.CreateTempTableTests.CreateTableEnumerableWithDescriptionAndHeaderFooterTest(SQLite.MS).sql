BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [TempTable]

BeforeExecute
-- SQLite.MS SQLite

/* THIS IS HEADER*/ CREATE TABLE [TempTable]
(
	[Name] NVarChar(20) NOT NULL
)
/* THIS IS FOOTER*/

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [TempTable]
(
	[Name]
)
VALUES
('John')

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t].[Name]
FROM
	[Person] [p]
		INNER JOIN [TempTable] [t] ON [p].[FirstName] = [t].[Name]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [TempTable]

