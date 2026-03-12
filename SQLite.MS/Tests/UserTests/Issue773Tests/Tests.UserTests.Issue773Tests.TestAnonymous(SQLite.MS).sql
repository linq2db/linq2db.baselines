-- SQLite.MS SQLite


DROP TABLE IF EXISTS dataFTS;
CREATE VIRTUAL TABLE dataFTS USING fts4(`ID` INTEGER, `FirstName` TEXT, `LastName` TEXT, `MidName` TEXT )

-- SQLite.MS SQLite

SELECT
	[arg].[FirstName],
	[arg].[MidName],
	[arg].[LastName]
FROM
	[dataFTS] [arg]
WHERE
	[dataFTS] match 'John*'

-- SQLite.MS SQLite

DROP TABLE dataFTS

