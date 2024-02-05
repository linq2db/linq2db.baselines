﻿BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue1965Person]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Issue1965Person]
(
	[Id]   INTEGER       NOT NULL,
	[Name] NVarChar(255)     NULL,
	[Age]  INTEGER       NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Chipcard]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Chipcard]
(
	[PersonId]      INTEGER   NOT NULL,
	[ValidationEnd] DateTime2 NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[ka].[PersonId],
	[ka].[ValidationEnd],
	[p].[Id],
	[p].[Name],
	[p].[Age]
FROM
	[Chipcard] [ka]
		LEFT JOIN [Issue1965Person] [p] ON [p].[Id] = [ka].[PersonId]
WHERE
	([p].[Id] IS NOT NULL OR [p].[Name] IS NOT NULL OR [p].[Age] IS NOT NULL)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Chipcard]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue1965Person]

