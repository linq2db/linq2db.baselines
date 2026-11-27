-- SQLite.MS SQLite
INSERT INTO [RecordSetterTable]
(
	[Id],
	[Number],
	[Text]
)
VALUES
(
	1,
	5,
	'before'
)

-- SQLite.MS SQLite
UPDATE
	[RecordSetterTable]
SET
	[Text] = 'after'

-- SQLite.MS SQLite
SELECT
	[r].[Id],
	[r].[Number],
	[r].[Text]
FROM
	[RecordSetterTable] [r]
WHERE
	[r].[Id] = 1
LIMIT 2

