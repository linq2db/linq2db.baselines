﻿BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE [Issue2647Table]
(
	[Id]         INTEGER       NOT NULL,
	[LanguageId] NVarChar(255)     NULL,
	[Text]       NVarChar(255)     NULL,

	CONSTRAINT [PK_Issue2647Table] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

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
			[Issue2647Table] [ss2]
		WHERE
			[ss2].[Id] = [t1].[Id]
	) * 10000) / (
		SELECT
			Count(*)
		FROM
			[Issue2647Table] [ss3]
		WHERE
			[ss3].[Id] = [t1].[Id]
	) DESC

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue2647Table]

