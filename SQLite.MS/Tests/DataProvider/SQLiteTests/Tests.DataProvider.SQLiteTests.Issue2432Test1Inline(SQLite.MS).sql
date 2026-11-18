-- SQLite.MS SQLite
INSERT INTO [Issue2432Table]
(
	[DateTime],
	[Field]
)
VALUES
(
	637185956951231234,
	0
)

-- SQLite.MS SQLite
UPDATE
	[Issue2432Table]
SET
	[Field] = 0
WHERE
	[Issue2432Table].[DateTime] = 637185956951231234

-- SQLite.MS SQLite
SELECT
	[r].[DateTime],
	[r].[Field]
FROM
	[Issue2432Table] [r]
WHERE
	[r].[DateTime] = 637185956951231234
LIMIT 2

