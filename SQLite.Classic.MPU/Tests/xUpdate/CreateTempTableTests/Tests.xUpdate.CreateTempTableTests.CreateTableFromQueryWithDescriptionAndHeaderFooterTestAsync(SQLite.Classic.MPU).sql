-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [TempTable]

-- SQLite.Classic.MPU SQLite.Classic SQLite

/* THIS IS ASYNC HEADER*/ CREATE TABLE [TempTable]
(
	[FirstName]  NVarChar(255)  NOT NULL,
	[PersonID]   INTEGER        NOT NULL PRIMARY KEY AUTOINCREMENT,
	[LastName]   NVarChar(255)  NOT NULL,
	[MiddleName] NVarChar(255)      NULL,
	[Gender]     Char(1)        NOT NULL
)
/* THIS IS ASYNC FOOTER*/

-- SQLite.Classic.MPU SQLite.Classic SQLite

INSERT INTO [TempTable]
(
	[FirstName],
	[PersonID],
	[LastName],
	[MiddleName],
	[Gender]
)
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[TempTable] [t1]

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[TempTable] [t1]

-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [TempTable]

