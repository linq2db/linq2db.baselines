-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [TestPersons2]

-- SQLite.Classic.MPM SQLite.Classic SQLite

/* THIS IS HEADER*/ CREATE TABLE temp.[TestPersons2]
(
	[FirstName]  NVarChar(255)  NOT NULL,
	[PersonID]   INTEGER        NOT NULL PRIMARY KEY AUTOINCREMENT,
	[LastName]   NVarChar(255)  NOT NULL,
	[MiddleName] NVarChar(255)      NULL,
	[Gender]     Char(1)        NOT NULL
)
/* THIS IS FOOTER*/

-- SQLite.Classic.MPM SQLite.Classic SQLite

INSERT INTO temp.[TestPersons2]
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

-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	temp.[TestPersons2] [t1]

-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[Person] [t1]

-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS temp.[TestPersons2]

