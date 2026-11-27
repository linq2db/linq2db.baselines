-- SQLite.Classic.MPM SQLite.Classic SQLite
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

-- SQLite.Classic.MPM SQLite.Classic SQLite
UPDATE
	[RecordSetterTable]
SET
	[Number] = [RecordSetterTable].[Number],
	[Text] = [RecordSetterTable].[Text]
WHERE
	[RecordSetterTable].[Id] = 1

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[r].[Id],
	[r].[Number],
	[r].[Text]
FROM
	[RecordSetterTable] [r]
WHERE
	[r].[Id] = 1
LIMIT 2

