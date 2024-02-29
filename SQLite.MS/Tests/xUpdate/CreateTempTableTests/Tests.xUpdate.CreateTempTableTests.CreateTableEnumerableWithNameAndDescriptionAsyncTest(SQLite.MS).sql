BeforeExecute
-- SQLite.MS SQLite (asynchronously)

DROP TABLE IF EXISTS temp.[TempTable]

BeforeExecute
-- SQLite.MS SQLite (asynchronously)

CREATE TEMPORARY TABLE IF NOT EXISTS temp.[TempTable]
(
	[Name] NVarChar(20) NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite (asynchronously)

INSERT INTO temp.[TempTable]
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
		INNER JOIN temp.[TempTable] [t] ON [p].[FirstName] = [t].[Name]

BeforeExecute
-- SQLite.MS SQLite (asynchronously)

DROP TABLE IF EXISTS temp.[TempTable]

