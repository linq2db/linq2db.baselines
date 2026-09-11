-- SQLite.Classic SQLite
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

-- SQLite.Classic SQLite
UPDATE
	[Issue4132Table]
SET
	[Number] = [Issue4132Table].[Number],
	[Text] = [Issue4132Table].[Text]
WHERE
	[Issue4132Table].[Id] = 1

-- SQLite.Classic SQLite
SELECT
	[r].[Id],
	[r].[Number],
	[r].[Text]
FROM
	[Issue4132Table] [r]
WHERE
	[r].[Id] = 1
LIMIT 2

