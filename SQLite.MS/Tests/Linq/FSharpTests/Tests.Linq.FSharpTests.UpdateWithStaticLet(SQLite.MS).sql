-- SQLite.MS SQLite
DECLARE @DefaultNote NVarChar(4) -- String
SET     @DefaultNote = 'note'

INSERT INTO [StaticLetTable]
(
	[Id],
	[Number],
	[Text],
	[Note]
)
VALUES
(
	1,
	5,
	'before',
	@DefaultNote
)

-- SQLite.MS SQLite
UPDATE
	[StaticLetTable]
SET
	[Text] = 'after'
WHERE
	[StaticLetTable].[Id] = 1

-- SQLite.MS SQLite
SELECT
	[r].[Id],
	[r].[Number],
	[r].[Text],
	[r].[Note]
FROM
	[StaticLetTable] [r]
WHERE
	[r].[Id] = 1
LIMIT 2

