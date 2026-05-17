-- SQLite.Classic.MPM SQLite.Classic SQLite

UPDATE
	[ParentTable]
SET
	[Value] = [ParentTable].[Value] * 10
FROM
	[ChildTable] [c_1]
WHERE
	[ParentTable].[Id] = 2 AND [c_1].[ParentId] = [ParentTable].[Id]

-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[p].[Id],
	[p].[Value]
FROM
	[ParentTable] [p]
WHERE
	[p].[Id] = 2
LIMIT 1

