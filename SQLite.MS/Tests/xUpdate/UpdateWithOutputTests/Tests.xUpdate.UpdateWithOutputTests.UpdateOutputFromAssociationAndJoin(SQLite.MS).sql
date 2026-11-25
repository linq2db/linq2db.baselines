-- SQLite.MS SQLite
INSERT INTO [UpdateOutputOwner] DEFAULT VALUES

-- SQLite.MS SQLite
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

-- SQLite.MS SQLite
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

