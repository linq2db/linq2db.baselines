-- SQLite.MS SQLite


DROP TABLE IF EXISTS dataFTS;
CREATE VIRTUAL TABLE dataFTS USING fts4(`ID` INTEGER, `FirstName` TEXT, `LastName` TEXT, `MidName` TEXT )

-- SQLite.MS SQLite

SELECT
	[result_1].[FirstName],
	[result_1].[MidName],
	[result_1].[LastName]
FROM
	[dataFTS] [result_1]
WHERE
	[dataFTS] match 'John*'

-- SQLite.MS SQLite

INSERT INTO [dataFTS]
(
	[FirstName]
)
VALUES
(
	'JohnTheRipper'
)

-- SQLite.MS SQLite

INSERT INTO [dataFTS]
(
	[FirstName]
)
VALUES
(
	'DoeJohn'
)

-- SQLite.MS SQLite

SELECT
	[result_1].[FirstName],
	[result_1].[MidName],
	[result_1].[LastName]
FROM
	[dataFTS] [result_1]
WHERE
	[dataFTS] match 'John*'

-- SQLite.MS SQLite

DROP TABLE dataFTS

