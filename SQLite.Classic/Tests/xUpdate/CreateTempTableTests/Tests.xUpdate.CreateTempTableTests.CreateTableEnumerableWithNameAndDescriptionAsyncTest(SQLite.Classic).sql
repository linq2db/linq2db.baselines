BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

DROP TABLE IF EXISTS temp.[TempTable]

BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

CREATE TEMPORARY TABLE IF NOT EXISTS temp.[TempTable]
(
	[Name] NVarChar(20) NOT NULL,

	CONSTRAINT [PK_TempTable] PRIMARY KEY ([Name])
)

BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

INSERT INTO temp.[TempTable]
(
	[Name]
)
VALUES
('John')

BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

SELECT
	[t].[Name]
FROM
	[Person] [p]
		INNER JOIN temp.[TempTable] [t] ON [p].[FirstName] = [t].[Name]

BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

DROP TABLE IF EXISTS temp.[TempTable]

