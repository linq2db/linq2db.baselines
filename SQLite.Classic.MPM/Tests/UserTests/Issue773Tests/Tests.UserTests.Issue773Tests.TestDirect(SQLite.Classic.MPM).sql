BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite


DROP TABLE IF EXISTS dataFTS;
CREATE VIRTUAL TABLE dataFTS USING fts4(`ID` INTEGER, `FirstName` TEXT, `LastName` TEXT, `MidName` TEXT )

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[result_1].[FirstName],
	[result_1].[MidName],
	[result_1].[LastName]
FROM
	[dataFTS] [result_1]
WHERE
	[dataFTS] match 'John*'

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

INSERT INTO [dataFTS]
(
	[FirstName]
)
VALUES
(
	'JohnTheRipper'
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

INSERT INTO [dataFTS]
(
	[FirstName]
)
VALUES
(
	'DoeJohn'
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[result_1].[FirstName],
	[result_1].[MidName],
	[result_1].[LastName]
FROM
	[dataFTS] [result_1]
WHERE
	[dataFTS] match 'John*'

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE dataFTS

