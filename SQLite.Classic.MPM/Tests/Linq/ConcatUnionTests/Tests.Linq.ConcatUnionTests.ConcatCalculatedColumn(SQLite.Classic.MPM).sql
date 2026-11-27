-- SQLite.Classic.MPM SQLite.Classic SQLite
INSERT INTO [CalculatedColumnSetTable]
(
	[Id],
	[FirstName],
	[LastName],
	[Text]
)
VALUES
(
	1,
	'one',
	'two',
	'text'
)

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[t1].[Id],
	[t1].[Text],
	Coalesce([t1].[FirstName], '') || ' ' || Coalesce([t1].[LastName], '')
FROM
	[CalculatedColumnSetTable] [t1]
UNION ALL
SELECT
	[t2].[Id],
	[t2].[Text],
	Coalesce([t2].[FirstName], '') || ' ' || Coalesce([t2].[LastName], '')
FROM
	[CalculatedColumnSetTable] [t2]

