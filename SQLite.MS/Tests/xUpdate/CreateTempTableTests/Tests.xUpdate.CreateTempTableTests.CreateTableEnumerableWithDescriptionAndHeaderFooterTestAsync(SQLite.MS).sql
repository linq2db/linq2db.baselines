BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [TempTable]

BeforeExecute
-- SQLite.MS SQLite (asynchronously)

/* THIS IS ASYNC HEADER*/ CREATE TABLE [TempTable]
(
	[Name] NVarChar(20) NOT NULL
)
/* THIS IS ASYNC FOOTER*/

BeforeExecute
-- SQLite.MS SQLite (asynchronously)

INSERT INTO [TempTable]
(
	[Name]
)
VALUES
('John')

BeforeExecute
-- SQLite.MS SQLite (asynchronously)

SELECT
	[t].[Name]
FROM
	[Person] [p]
		INNER JOIN [TempTable] [t] ON [p].[FirstName] = [t].[Name]

BeforeExecute
-- SQLite.MS SQLite (asynchronously)

DROP TABLE IF EXISTS [TempTable]

