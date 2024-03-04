﻿BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue2647Table]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Issue2647Table]
(
	[Id]         INTEGER       NOT NULL,
	[LanguageId] NVarChar(255)     NULL,
	[Text]       NVarChar(255)     NULL,

	CONSTRAINT [PK_Issue2647Table] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[LanguageId],
	[t1].[Text]
FROM
	[Issue2647Table] [t1]
ORDER BY
	[t1].[LanguageId],
	((
		SELECT
			Count(*)
		FROM
			[Issue2647Table] [t2]
		WHERE
			[t2].[Id] = [t1].[Id]
	) * 10000) / (
		SELECT
			Count(*)
		FROM
			[Issue2647Table] [t3]
		WHERE
			[t3].[Id] = [t1].[Id]
	) DESC

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue2647Table]

