﻿BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite


DROP TABLE IF EXISTS dataFTS;
CREATE VIRTUAL TABLE dataFTS USING fts4(`ID` INTEGER, `FirstName` TEXT, `LastName` TEXT, `MidName` TEXT )

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[arg].[FirstName],
	[arg].[MidName],
	[arg].[LastName]
FROM
	[dataFTS] [arg]
WHERE
	[dataFTS] match 'John*'

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

INSERT INTO [dataFTS]
(
	[FirstName]
)
VALUES
(
	'JohnTheRipper'
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

INSERT INTO [dataFTS]
(
	[FirstName]
)
VALUES
(
	'DoeJohn'
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[arg].[FirstName],
	[arg].[MidName],
	[arg].[LastName]
FROM
	[dataFTS] [arg]
WHERE
	[dataFTS] match 'John*'

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE dataFTS

