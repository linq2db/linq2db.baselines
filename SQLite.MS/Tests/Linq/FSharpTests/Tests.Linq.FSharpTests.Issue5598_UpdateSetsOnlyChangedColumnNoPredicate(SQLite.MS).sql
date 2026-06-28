-- SQLite.MS SQLite

INSERT INTO [Issue4132Table]
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
	[Issue4132Table]
SET
	[Text] = 'after'

-- SQLite.MS SQLite

SELECT
	[r].[Id],
	[r].[Number],
	[r].[Text]
FROM
	[Issue4132Table] [r]
WHERE
	[r].[Id] = 1
LIMIT 2

