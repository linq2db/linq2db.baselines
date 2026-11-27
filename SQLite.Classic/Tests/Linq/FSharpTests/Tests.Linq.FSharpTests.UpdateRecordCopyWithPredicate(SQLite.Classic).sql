-- SQLite.Classic SQLite
INSERT INTO [RecordSetterTable]
(
	[Id],
	[Number],
	[Text]
)
VALUES
(
	1,
	1,
	'before'
)

-- SQLite.Classic SQLite
UPDATE
	[RecordSetterTable]
SET
	[Text] = 'updated recently'
WHERE
	[RecordSetterTable].[Number] = 1

-- SQLite.Classic SQLite
SELECT
	[r].[Id],
	[r].[Number],
	[r].[Text]
FROM
	[RecordSetterTable] [r]
WHERE
	[r].[Id] = 1
LIMIT 2

