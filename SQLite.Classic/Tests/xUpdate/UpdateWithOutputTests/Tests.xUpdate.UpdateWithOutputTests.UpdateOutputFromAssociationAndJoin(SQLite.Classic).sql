-- SQLite.Classic SQLite
INSERT INTO [UpdateOutputOwner] DEFAULT VALUES

-- SQLite.Classic SQLite
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

-- SQLite.Classic SQLite
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

