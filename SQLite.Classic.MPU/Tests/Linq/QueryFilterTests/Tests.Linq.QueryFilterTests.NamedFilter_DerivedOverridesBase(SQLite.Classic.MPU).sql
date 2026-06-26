-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[e].[Id],
	[e].[IsDeleted],
	[e].[Value]
FROM
	[FilterDerivedEntity] [e]
WHERE
	[e].[Id] < 100

