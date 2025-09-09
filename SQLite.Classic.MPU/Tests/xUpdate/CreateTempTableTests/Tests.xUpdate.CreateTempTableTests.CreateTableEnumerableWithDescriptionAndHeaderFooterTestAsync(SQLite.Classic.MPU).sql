BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [TempTable]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite (asynchronously)

/* THIS IS ASYNC HEADER*/ CREATE TABLE temp.TempTable
(
	[Name] NVarChar(20) NOT NULL
)
/* THIS IS ASYNC FOOTER*/

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite (asynchronously)

INSERT INTO [TempTable]
(
	[Name]
)
VALUES
('John')

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite (asynchronously)

SELECT
	[t].[Name]
FROM
	[Person] [p]
		INNER JOIN [TempTable] [t] ON [p].[FirstName] = [t].[Name]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite (asynchronously)

DROP TABLE IF EXISTS [TempTable]

