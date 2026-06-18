-- SQLite.Classic.MPU SQLite.Classic SQLite

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

-- SQLite.Classic.MPU SQLite.Classic SQLite

UPDATE
	[Issue4132Table]
SET
	[Text] = 'after'
WHERE
	[Issue4132Table].[Id] = 1

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[r].[Id],
	[r].[Number],
	[r].[Text]
FROM
	[Issue4132Table] [r]
WHERE
	[r].[Id] = 1
LIMIT 2

