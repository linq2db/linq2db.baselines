-- SQLite.MS SQLite
INSERT INTO [DateTimeInt64Table]
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
SELECT
	[r].[DateTime],
	[r].[Field]
FROM
	[DateTimeInt64Table] [r]
WHERE
	[r].[DateTime] = 637185956951231234
LIMIT 2

