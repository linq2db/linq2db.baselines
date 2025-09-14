BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

DROP TABLE IF EXISTS [TempTable]

BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

CREATE TABLE IF NOT EXISTS [TempTable]
(
	[Name] NVarChar(20) NOT NULL,

	CONSTRAINT [PK_TempTable] PRIMARY KEY ([Name])
)

BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

INSERT INTO [TempTable]
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
		INNER JOIN [TempTable] [t] ON [p].[FirstName] = [t].[Name]

BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

DROP TABLE IF EXISTS [TempTable]

