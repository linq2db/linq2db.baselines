BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue3323Table]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Issue3323Table]
(
	[Id]       INTEGER       NOT NULL,
	[FistName] NVarChar(255)     NULL,
	[LastName] NVarChar(255)     NULL,
	[Text]     NVarChar(255) NOT NULL,

	CONSTRAINT [PK_Issue3323Table] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

INSERT INTO [Issue3323Table]
(
	[Id],
	[FistName],
	[LastName],
	[Text]
)
VALUES
(
	1,
	'one',
	'two',
	'text'
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[r].[Id],
	[r].[FistName] || ' ' || [r].[LastName]
FROM
	[Issue3323Table] [r]
UNION ALL
SELECT
	[r_1].[Id] + 1,
	[r_1].[Text]
FROM
	[Issue3323Table] [r_1]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[r].[Id] + 1,
	[r].[Text]
FROM
	[Issue3323Table] [r]
UNION ALL
SELECT
	[r_1].[Id],
	[r_1].[FistName] || ' ' || [r_1].[LastName]
FROM
	[Issue3323Table] [r_1]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue3323Table]

