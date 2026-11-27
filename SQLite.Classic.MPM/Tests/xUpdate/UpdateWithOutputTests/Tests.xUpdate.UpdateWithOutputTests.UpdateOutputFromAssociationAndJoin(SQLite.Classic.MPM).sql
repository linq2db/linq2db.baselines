-- SQLite.Classic.MPM SQLite.Classic SQLite
INSERT INTO [UpdateOutputOwner] DEFAULT VALUES

-- SQLite.Classic.MPM SQLite.Classic SQLite
UPDATE
	[UpdateOutputItem]
SET
	[Value] = 1
FROM
	[UpdateOutputOwner] [a]
WHERE
	[a].[Id] = [UpdateOutputItem].[TestId]
RETURNING
	[UpdateOutputItem].[Id]

-- SQLite.Classic.MPM SQLite.Classic SQLite
UPDATE
	[UpdateOutputItem]
SET
	[Value] = 1
FROM
	[UpdateOutputOwner] [a]
WHERE
	[a].[Id] = [UpdateOutputItem].[TestId]
RETURNING
	[UpdateOutputItem].[Id]

