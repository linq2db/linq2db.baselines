-- SQLite.Classic.MPM SQLite.Classic SQLite
INSERT INTO [Issue4132Table]
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

-- SQLite.Classic.MPM SQLite.Classic SQLite
UPDATE
	[Issue4132Table]
SET
	[Text] = 'updated recently'
WHERE
	[Issue4132Table].[Number] = 1

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[r].[Id],
	[r].[Number],
	[r].[Text]
FROM
	[Issue4132Table] [r]
WHERE
	[r].[Id] = 1
LIMIT 2

